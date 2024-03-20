package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DTO.UserDTO;
import dbconnection.MyDBConnection;

public class UserDAO {
	//db연동 -> db sql전달 -> 결과 받아오기
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	//검색-상세(개별)
	private String USER_GET = "select * from users where id=?";	
	//검색-모든데이터
	private String USER_LIST = "select * from users";
	//삽입
	private String USER_INSERT = "insert into users values(?,?,?,?,?,?)";
	//수정
	private String USER_UPDATE = "update users set password=?, name=?, role=?, address=?, phone=? where id=?";
	//삭제
	private String USER_DELETE = "delete from users where id=?";

	//회원 관련 CRUD; create, read, 전체-update, delete, 개별-select
	//1. 회원 상세 조회   // private String USER_GET = "select * from users where id=?";
	public UserDTO getUser(String id) { //DispacherServlet 수정
		UserDTO user = null;
			//db연동 -> db sql전달 -> 결과 받아오기
			//private Connection con = null;
	     try {
			con = MyDBConnection.getConnection();
			pstmt = con.prepareStatement(USER_GET);	// "select * from users where id=?";
			//매개변수에 값 담기 - ?
			pstmt.setString(1, id);
			
			//sql 실행
			rs=pstmt.executeQuery();	//select | insert,update, delete일때 executeUpdate()사용
			   //결과가 있으면 user에 담아서 보냄, 없으면 false      
//		 	   if(rs.next()){
//					user = new UserDTO();	//userDTO의 public setID(String id)함수를 호출해줘
//					user.setId("id");
//					user.setPassword("password");
//					user.setName("name");
//					user.setAddress("address");
//					user.setPhone("phone");
//					user.setRole("role");
//			   	} 
		 	   if(rs.next()){
		 		   user = new UserDTO();	//userDTO의 public setID(String id)함수를 호출해줘
		 		   user.setId(rs.getString("id"));
		 		   user.setPassword(rs.getString("password"));
		 		   user.setName(rs.getString("name"));
		 		   user.setAddress(rs.getString("address"));
		 		   user.setPhone(rs.getString("phone"));
		 		   user.setRole(rs.getString("role"));
		 	   } 
		} catch (SQLException e) {
			e.printStackTrace();
		}catch(Exception e) {
			
		}finally {
			MyDBConnection.close(rs, pstmt, con);
		}
	     //전달
	    return user;
	}
	//6. 회원 중복 체크 | membership.jsp > function.registerFunction()
	public int registerCheck(String id) { 
//	private String USER_GET = "select * from users where id = ?"
		//UserDTO user = null;
		
	     try {
			con = MyDBConnection.getConnection();
			pstmt = con.prepareStatement(USER_GET);
			pstmt.setString(1, id);
			
			rs=pstmt.executeQuery();
			         
//			   if( rs.next() ) {
			   if(rs.next()||id.equals("")){
					return 0; //이미 존재하는 회원 아이디
			   }else {
				   return 1; // 가입 가능한 회원 아이디
			   }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			MyDBConnection.close(rs, pstmt, con);
		}

	    return -1; //데이터 베이스 오류 알려주기
	}
	
	
	//5. 회원 삭제 	private String USER_DELETE = "delete from users where id=?";
	public void deleteUser(String id) {
		
		try {
			con = MyDBConnection.getConnection();
			pstmt = con.prepareStatement(USER_DELETE);
			pstmt.setString(1, id);
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			MyDBConnection.close(rs, pstmt, con);
		}
	}
//		private String USER_UPDATE = "update users set password=?, name=?, role=?, address=?, phone=? where id=?";
	// 3. 회원 수정
	public void updateUser(UserDTO dto) {

		try {
			con = MyDBConnection.getConnection();
			pstmt = con.prepareStatement(USER_UPDATE);
			pstmt.setString(1, dto.getPassword());	//password
			pstmt.setString(2, dto.getName());
			pstmt.setString(3, dto.getAddress());
			pstmt.setString(4, dto.getPhone());
			pstmt.setString(5, dto.getRole());
			pstmt.setString(6, dto.getId());	//id

			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			MyDBConnection.close(rs, pstmt, con);
		}
		
	}
	
//	private String USER_INSERT = "insert into users values(?,?,?,?,?,?)";
	// 2. 회원 등록
	/*
	    id char(10) primary key,
    	password char(20) not null,
    	name varchar(50) not null,
    	addresss varchar(200),
    	phone char(15) not null,
    	role char(20) default "user"
	 */

	 //2. 삽입하고 처리결과를 넘겨주기 | 성공;1 실패-1 리턴
	public int insertUser(UserDTO dto) {
//	private int insertUser(String id, String password, String name, String address, String phone, String role) {
		
		try {
			con = MyDBConnection.getConnection();
			
//			pstmt = con.prepareStatement("insert into users values(?,?,?,?,?,?)";
			pstmt = con.prepareStatement(USER_INSERT);
			pstmt.setString(1,dto.getId());	//id
			pstmt.setString(2,dto.getPassword()); //password
			pstmt.setString(3,dto.getName());
			pstmt.setString(4,dto.getAddress());
			pstmt.setString(5,dto.getPhone());
			pstmt.setString(6,dto.getRole());
//			pstmt.setString(1,id );
//			pstmt.setString(2,password );
//			pstmt.setString(3,name);
//			pstmt.setString(4,address);
//			pstmt.setString(5,phone);
//			pstmt.setString(6,role);

			int result = pstmt.executeUpdate();	//성공하면 1, 실패하면 0 반환
			return pstmt.executeUpdate(); //insert 성공하면 1 반환
			
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			MyDBConnection.close(rs, pstmt, con);
		}
		return -1; //db오류일때를 위해
	}
	
	//회원 등록 
	public void insertUser1(UserDTO dto) {
		
		try {
			con = MyDBConnection.getConnection();
			pstmt = con.prepareStatement(USER_INSERT);
			pstmt.setString(1,dto.getId() );
			pstmt.setString(2,dto.getPassword() );
			pstmt.setString(3,dto.getName());
			pstmt.setString(4,dto.getAddress());
			pstmt.setString(5,dto.getPhone());
			pstmt.setString(6,dto.getRole());

			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			MyDBConnection.close(rs, pstmt, con);
		}
	
	}
	
	
	
//	private String USER_LIST = "select * from users";
	//2. 회원 목록 검색(조회) - 전체
	public List<UserDTO> getUserList(){
		List<UserDTO> userList = new ArrayList<UserDTO>();
		
		try {
			con = MyDBConnection.getConnection();
			pstmt = con.prepareStatement(USER_LIST);	//"select * from users";
//			pstmt = con.prepareStatement("select * from users");
			rs=pstmt.executeQuery();	//위의 sql문 실행
			
			//가져온 결과를 담아서 필요한 곳으로 전달
			while(rs.next()) {	//검색해온 자료가 있으면
				UserDTO user = new UserDTO();
				
				user.setId(rs.getString("id"));
				user.setPassword(rs.getString("password"));
				user.setName(rs.getString("name"));
				user.setAddress(rs.getString("address"));
				user.setPhone(rs.getString("phone"));
				user.setRole(rs.getString("role"));
				
				//(홍길동) 붕어빵 객체(=인스턴스) 하나씩 ArrayList에 담기
				userList.add(user);
			} //while끝
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {	//자원 닫기
			MyDBConnection.close(rs, pstmt, con);
		}	
		return userList;	//ArrayList에 담긴 객체들 전달하기
	}	
}
