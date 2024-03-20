package producttest;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/pcontrol")
public class ProductController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
      
	ProductService service;
	
    public ProductController() {
        super();
        
        service = new ProductService();	// 객체생성, 모든 사용자요청에서 동일한 객체(=인스턴스) 사용
    }

    
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 클라이언트 요청을 구분 -> 처리할 메소드를 호출 -> 뷰로 이동하는 작업
		
		String view = "";	// 뷰 페이지를 담을 변수
		String action = request.getParameter("action");
		
		// action 값이 null일때도 있고 아닐때도 있음
		if (action == null) {
		
/*  null인 경우 자기 자신을 호출하도록, 뷰페이지 이동
	뷰페이지로 이동 : response.sendRedirect("이동할페이지") - 가져갈 데이터 없을때
	getServletContext().getRequestDispatcher("이동할페이지").forward(request, response); - 가져갈 데이터 있을때 */
		
/*	forward 액션 : 클라이언트 요청을 다른 페이지로 전환하는 액션
 				   클라이언트가 새롭게 접속하는게 아니라 서버에서 내부적으로
 				   새로운 페이지로 이동하고 그 페이지의 내용을 클라이언트에게 응답으로 전달
 				   - 최초 request 요청을 유지. request의 setAttribute() 속성값을 저장한 경우, 
 				   	 이를 유지하면서 페이지를 이동해야 하므로 forward가 적합
 				   
 	redirection : 서버가 클라이언트에게 새로운 페이지로 다시 접속하도록 응답을 보내고
 				  응답 받은 클라이언트가 다시 새로운 페이지로 접속하는 방식 
 				  - 단순한 페이지 이동에 적합  */

			getServletContext().getRequestDispatcher("/pcontrol?action=list")	//pcontrol 페이지로 이동, action에 list를 담아서
			.forward(request, response);	// 페이지 이동하면서 두 객체도 같이 넘겨받음
		
		
		
		} else {	// action이 null이 아닌 경우
			
			switch (action) {
				case "list" : view = list(request, response); break;	//2번
				case "info" : view = info(request, response); break;
				case "delete" : view = delete(request, response); break;
				case "send" : view = "sendTest.jsp"; break;
			} //switch 끝
			
			// 뷰페이지로 이동
			getServletContext().getRequestDispatcher("/" + view)	//3번->list forEach로 이동
			.forward(request, response);
			
			
		} //if-else끝
		
	} //service 메소드끝

	public String list(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("products", service.findAll());	// 1번
		return "productList.jsp";	// <- 속성이름; products로 받고 foreach쓰기위해 변수p에 담아씀
	}
	
	public String info(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("pro", service.find(request.getParameter("id")));
		return "productInfo.jsp";	// <- 여기에 전부 pro.으로 받음
	}
	
	public String delete(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("products", service.delete(request.getParameter("id")));
		return "productList.jsp";
	}
	
	
}
