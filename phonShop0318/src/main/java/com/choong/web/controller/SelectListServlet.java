package com.choong.web.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.choong.biz.product.ProductDAO;
import com.choong.biz.product.ProductDTO;

@WebServlet("*.do3")	// URL 패턴을 수정하여 선택한 목록만 가져오도록
public class SelectListServlet extends HttpServlet {
	// 한글필터 우선처리
    private static final long serialVersionUID = 1L;
    
    // 서블릿이 초기화될 때 ProductDAO 객체를 생성합니다.
//    public void init() {
//        ProductDAO = new ProductDAO(); 
//    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        processRequest(request, response);	
        // 클라이이언트가 서블릿에 요청하면 이 메소드가 호출됨(get이라 읽기) -> processRequest 가 또 호출돼서 처리됨
        
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        processRequest(request, response);
        // 클라이이언트가 서블릿에 요청하면 이 메소드가 호출됨(Post라 처리,수정,저장) -> processRequest 가 또 호출돼서 처리됨
    }

    private void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // ProductDAO를 통해 상품목록 불러와줘
        ProductDAO productDAO = new ProductDAO();
        List<ProductDTO> proList = productDAO.getProductList();
        
        // 제품 목록을 request에 속성으로 추가
        request.setAttribute("proList", proList);
        
        // JSP 페이지로 포워딩 -> 리스트 표시
        request.getRequestDispatcher("/phone/product/productManagementList.jsp").forward(request, response);
    }
}
