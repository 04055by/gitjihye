package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import DAO.ProductDAO;
import DTO.ProductDTO;

@WebServlet("*.do2")
public class ProductDispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public ProductDispatcherServlet() {
        super();
      
    }
	
    private ProductDAO productDAO;

    public void init() {
        productDAO = new ProductDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action == null) {
            action = "list";
        }

        switch (action) {
            case "list":
                listProducts(request, response);
                break;
            case "insert":
                insertProduct(request, response);
                break;
            case "delete":
                deleteProduct(request, response);
                break;
            case "update":
                updateProduct(request, response);
                break;
            default:
                listProducts(request, response);
        }
    }

    // 리스ㅡㅌ
    private void listProducts(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<ProductDTO> productList = productDAO.getProductList();
        request.setAttribute("productList", productList);
        request.getRequestDispatcher("productList.jsp").forward(request, response);
    }

    private void insertProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // HTTP 요청으로부터 삽입에 필요한 매개변수 추출
        String productCode = request.getParameter("productCode");
        int productDisplayStatus = Integer.parseInt(request.getParameter("productDisplayStatus"));
        int productSalePrice = Integer.parseInt(request.getParameter("productSalePrice"));
        int productInventoryQuantity = Integer.parseInt(request.getParameter("productInventoryQuantity"));
        String productRegistrationDate = request.getParameter("productRegistrationDate");
        String productName = request.getParameter("productName");
        int productSaleCount = Integer.parseInt(request.getParameter("productSaleCount"));
        int productDiscountStatus = Integer.parseInt(request.getParameter("productDiscountStatus"));
        int productOriginalPrice = Integer.parseInt(request.getParameter("productOriginalPrice"));
        int productCostPrice = Integer.parseInt(request.getParameter("productCostPrice"));
        String productPaymentType = request.getParameter("productPaymentType");
        String productContent = request.getParameter("productContent");
        String productImage = request.getParameter("productImage");
        String productHashtags = request.getParameter("productHashtags");
        String mainCategory = request.getParameter("mainCategory");
        String subCategory = request.getParameter("subCategory");
        int productBest = Integer.parseInt(request.getParameter("productBest"));
        
        // ProductDTO 객체 생성
        ProductDTO product = new ProductDTO(productCode, productDisplayStatus, productSalePrice, productInventoryQuantity, productRegistrationDate, productName, productSaleCount, productDiscountStatus, productOriginalPrice, productCostPrice, productPaymentType, productContent, productImage, productHashtags, mainCategory, subCategory, productBest);
        
        // DAO를 사용하여 상품 삽입
        productDAO.productInsert(product);
        
        // 삽입 후, 목록 페이지로 리다이렉트 또는 다른 동작 수행
        response.sendRedirect(request.getContextPath() + "/products?action=list");
    }

    private void deleteProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productCode = request.getParameter("productCode");
        productDAO.productDelete(productCode);
        response.sendRedirect(request.getContextPath() + "/products?action=list");
    }

    private void updateProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // HTTP 요청으로부터 업데이트에 필요한 매개변수 추출
        String productCode = request.getParameter("productCode");
        int productDisplayStatus = Integer.parseInt(request.getParameter("productDisplayStatus"));
        int productSalePrice = Integer.parseInt(request.getParameter("productSalePrice"));
        int productInventoryQuantity = Integer.parseInt(request.getParameter("productInventoryQuantity"));
        String productRegistrationDate = request.getParameter("productRegistrationDate");
        String productName = request.getParameter("productName");
        int productSaleCount = Integer.parseInt(request.getParameter("productSaleCount"));
        int productDiscountStatus = Integer.parseInt(request.getParameter("productDiscountStatus"));
        int productOriginalPrice = Integer.parseInt(request.getParameter("productOriginalPrice"));
        int productCostPrice = Integer.parseInt(request.getParameter("productCostPrice"));
        String productPaymentType = request.getParameter("productPaymentType");
        String productContent = request.getParameter("productContent");
        String productImage = request.getParameter("productImage");
        String productHashtags = request.getParameter("productHashtags");
        String mainCategory = request.getParameter("mainCategory");
        String subCategory = request.getParameter("subCategory");
        int productBest = Integer.parseInt(request.getParameter("productBest"));
        
        // ProductDTO 객체 생성
        ProductDTO product = new ProductDTO(productCode, productDisplayStatus, productSalePrice, productInventoryQuantity, productRegistrationDate, productName, productSaleCount, productDiscountStatus, productOriginalPrice, productCostPrice, productPaymentType, productContent, productImage, productHashtags, mainCategory, subCategory, productBest);
        
        // DAO를 사용하여 상품 업데이트
        productDAO.productUpdate(product);
        
        // 업데이트 후, 목록 페이지로 리다이렉트 또는 다른 동작 수행
        response.sendRedirect(request.getContextPath() + "/products?action=list");
    }
}
