package com.choong.web.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.choong.biz.product.ProductDAO;

@WebServlet("*.do4")	// URL 패턴을 수정하여 선택한 목록만 가져오도록
public class ProductDeleteServlet extends HttpServlet {
	// 한글필터 우선처리
    private static final long serialVersionUID = 1L;
    private ProductDAO productDAO; // ProductDAO 객체 선언

    // 서블릿이 초기화되면 ProductDAO 객체를 생성
    public void init() {
        productDAO = new ProductDAO(); 
    }

    // processRequest 메소드를 호출 -> doget 요청을 처리
    protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        processRequest(request, response); 
    }
    // processRequest 메서드를 호출 -> dopost 요청을 처리
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        processRequest(request, response); 
    }

    // 요청에서 productCode 매개 갖고와줘
    private void processRequest(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        String productCode = request.getParameter("productCode"); 

        // ProductDAO에 담겨서 입력받은 productCode 상품을 삭제해줘
        productDAO.productDelete(productCode);
        
        // 삭제 후 응답을 출력
        response.setContentType("text/html;charset=UTF-8"); // 응답 출력물의 타입
        PrintWriter out = response.getWriter(); // 응답할건데 PrintWriter 객체를 불러와줘
        out.println("<html><head><title>Product Delete</title></head><body>"); // HTML 시작을 작성
        out.println("<h1>Product Deleted Successfully</h1>"); // 삭제되었습니다. 안내
        out.println("</body></html>"); // HTML 페이지 끝을 작성
        out.close(); // PrintWriter 닫기
    }
}


/* @WebServlet("*.do3")
public class SelectListServlet extends HttpServlet {

private static final long serialVersionUID = 1L;

ProductDeleteServlet productDeleteServlet;

public SelectListServlet() {
	super();
	productDeleteServlet = new ProductDeleteServlet();
}

    protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
    	deleteProduct(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
    	deleteProduct(request, response);
    }

    private String deleteProduct(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
    	request.setAttribute("products", productDeleteServlet.deleteProduct(request.getParameter("productDisplayStatus")));
		return "productManagementList.jsp";
    }

    
    
//		delete만 하다가 멈춤!!!!!!!!!!!!!!!시ㅏ빅바ㅓ
//    private void deleteProduct(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
//        // ProductDAO를 사용하여 제품 목록을 불러옴
//        ProductDAO productDAO = new ProductDAO();
//        List<ProductDTO> proList = productDAO.getproList();
//        
//        // 제품 목록을 request에 속성으로 추가
//        request.setAttribute("proList", proList);
//        
//        // JSP 페이지로 포워딩
//        request.getRequestDispatcher("/productManagementList.jsp").forward(request, response);
//    }
    
    
} */
