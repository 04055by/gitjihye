package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DTO.BoardDTO;
import DTO.UserDTO;
import DTO.ProductDTO;
import dbconnection.MyDBConnection;

public class ProductDAO {
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	private String PRODUCT_GET = "select * from users where id=?";	
	private String PRODUCT_LIST = "select * from users";
	private String PRODUCT_INSERT = "insert into users values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	private String PRODUCT_UPDATE = "update users set productDisplayStatus=?, productSalePrice=?, productInventoryQuantity=?, productRegistrationDate=?, productName=?, "
			+ "productSaleCount=?, productDiscountStatus=?, productOriginalPrice=?, productCostPrice=?, productPaymentType=?, productContent=?, productImage=?, "
			+ "productHashtags=?, mainCategory=?, subCategory=?, productBest=?, where productCode=?";
	
	private String PRODUCT_DELETE = "delete from users where productCode=?";

	
	
	// [ 1 ] Insert
	
	public void productInsert(ProductDTO dto) {
		ProductDTO proList = null;

		try {
			con = MyDBConnection.getConnection();
			pstmt = con.prepareStatement(PRODUCT_GET);	// "select * from users where id=?";

			proList = new ProductDTO();	
			proList.setProductCode(rs.getString("productCode"));
			proList.setProductDisplayStatus(rs.getInt(2));
			proList.setProductSalePrice(rs.getInt(3));
			proList.setProductInventoryQuantity(rs.getInt(4));
			proList.setProductRegistrationDate(rs.getString("productRegistrationDate"));
			proList.setProductName(rs.getString("productName"));
			proList.setProductSaleCount(rs.getInt(7));
			proList.setProductDiscountStatus(rs.getInt(8));
			proList.setProductOriginalPrice(rs.getInt(9));
			proList.setProductCostPrice(rs.getInt(10));
			proList.setProductPaymentType(rs.getString("productPaymentType"));
			proList.setProductContent(rs.getString("productContent"));
			proList.setProductImage(rs.getString("productImage"));
			proList.setProductHashtags(rs.getString("productHashtags"));
			proList.setMainCategory(rs.getString("mainCategory"));
			proList.setSubCategory(rs.getString("subCategory"));
			proList.setProductBest(rs.getInt(17));
			
			pstmt.executeUpdate();	
		} catch (SQLException e) {
			e.printStackTrace();
		}catch(Exception e) {
			
		}finally {
			MyDBConnection.close(rs, pstmt, con);
		}
	}

	 // [ 1-2 ] 삽입하고 처리결과를 넘겨주기 | 성공;1 실패-1 리턴
//	public void productInsertCheck (ProductDTO dto) {
//		
//		try {
//			con = MyDBConnection.getConnection();
//			
//			pstmt = con.prepareStatement("insert into users values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
//			pstmt.setString(1, dto.getProductCode());	
//			pstmt.setInt(2, dto.getProductDisplayStatus());
//			pstmt.setInt(3, dto.getProductSalePrice());
//			pstmt.setInt(4, dto.getProductInventoryQuantity());
//			pstmt.setString(5, dto.getProductRegistrationDate());
//			pstmt.setString(6, dto.getProductName());
//			pstmt.setInt(7, dto.getProductSaleCount());
//			pstmt.setInt(8, dto.getProductDiscountStatus());
//			pstmt.setInt(9, dto.getProductOriginalPrice());
//			pstmt.setInt(10, dto.getProductCostPrice());
//			pstmt.setString(11, dto.getProductPaymentType());
//			pstmt.setString(12, dto.getProductContent());
//			pstmt.setString(13, dto.getProductImage());
//			pstmt.setString(14, dto.getProductHashtags());
//			pstmt.setString(15, dto.getMainCategory());
//			pstmt.setString(16, dto.getSubCategory());
//			pstmt.setInt(17, dto.getProductBest());	
//			
//
//			int result = pstmt.executeUpdate();	//성공하면 1, 실패하면 0 반환
//			return result;
//			
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			MyDBConnection.close(rs, pstmt, con);
//		}
//	}
	
	// [ 2 ] Update
	
	public void productUpdate(ProductDTO dto) {

		try {
			con = MyDBConnection.getConnection();
			pstmt = con.prepareStatement(PRODUCT_UPDATE);
			
			pstmt.setString(1, dto.getProductCode());	
			pstmt.setInt(2, dto.getProductDisplayStatus());
			pstmt.setInt(3, dto.getProductSalePrice());
			pstmt.setInt(4, dto.getProductInventoryQuantity());
			pstmt.setString(5, dto.getProductRegistrationDate());
			pstmt.setString(6, dto.getProductName());
			pstmt.setInt(7, dto.getProductSaleCount());
			pstmt.setInt(8, dto.getProductDiscountStatus());
			pstmt.setInt(9, dto.getProductOriginalPrice());
			pstmt.setInt(10, dto.getProductCostPrice());
			pstmt.setString(11, dto.getProductPaymentType());
			pstmt.setString(12, dto.getProductContent());
			pstmt.setString(13, dto.getProductImage());
			pstmt.setString(14, dto.getProductHashtags());
			pstmt.setString(15, dto.getMainCategory());
			pstmt.setString(16, dto.getSubCategory());
			pstmt.setInt(17, dto.getProductBest());	

			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			MyDBConnection.close(rs, pstmt, con);
		}
		
	}
	
	// [ 3 ] Delete
	
	public void productDelete (String productCode) {
		
		try {
			con = MyDBConnection.getConnection();
			pstmt = con.prepareStatement(PRODUCT_DELETE);
			pstmt.setString(1, productCode);
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			MyDBConnection.close(rs, pstmt, con);
		}
	}


	
	// [ 4 ] List - 전체
	public List<ProductDTO> getProductList(){
		List<ProductDTO> productList = new ArrayList<ProductDTO>();
		
		try {
			con = MyDBConnection.getConnection();
			pstmt = con.prepareStatement(PRODUCT_LIST);	
			rs=pstmt.executeQuery();	
			
			while(rs.next()) {	
				ProductDTO product = new ProductDTO();
				
				product.setProductCode(rs.getString("productCode"));
				product.setProductDisplayStatus(rs.getInt("productDisplayStatus"));
				product.setProductSalePrice(rs.getInt("productSalePrice"));
				product.setProductInventoryQuantity(rs.getInt("productInventoryQuantity"));
				product.setProductRegistrationDate(rs.getString("productRegistrationDate"));
				product.setProductName(rs.getString("productName"));
				product.setProductSaleCount(rs.getInt("productSaleCount"));
				product.setProductDiscountStatus(rs.getInt("productDiscountStatus"));
				product.setProductOriginalPrice(rs.getInt("productOriginalPrice"));
				product.setProductCostPrice(rs.getInt("productCostPrice"));
				product.setProductPaymentType(rs.getString("productPaymentType"));
				product.setProductContent(rs.getString("productContent"));
				product.setProductImage(rs.getString("productImage"));
				product.setProductHashtags(rs.getString("productHashtags"));
				product.setMainCategory(rs.getString("mainCategory"));
				product.setSubCategory(rs.getString("subCategory"));
				product.setProductBest(rs.getInt("productBest"));
				
				productList.add(product);
			} 
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {	
			MyDBConnection.close(rs, pstmt, con);
		}	
		return productList;	
	}	
}
