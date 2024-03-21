package com.choong.biz.product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.choong.biz.product.ProductDTO;
import dbconnection.MyDBConnection;

public class ProductDAO {
   private Connection con = null;
   private PreparedStatement pstmt = null;
   private ResultSet rs = null;
   
   private String PRODUCT_GET = "select * from productManagement where productCode=?";   
   private String PRODUCT_LIST = "select * from productManagement";
   private String PRODUCT_INSERT = "insert into productManagement values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
   private String PRODUCT_UPDATE = "update productDisplayStatus set productSalePrice=?, productInventoryQuantity=?, "
         + "productRegistrationDate=?, productName=?, productSaleCount=?, productDiscountStatus=?, productOriginalPrice=?, "
         + "productCostPrice=?, productPaymentType=?, productContent=?, productImage=?, productHashtags=?, "
   		 + "mainCategory=?, subCategory=?, productBest=?, where productCode=?, where productCode=?";
   
   private String PRODUCT_DELETE = "delete from productCode where productCode=?";

   
   
   // [ 1 ] Insert
   
   public void productInsert(ProductDTO dto) {
      ProductDTO proList = null;

      try {
         con = MyDBConnection.getConnection();
         pstmt = con.prepareStatement(PRODUCT_GET);   

         proList = new ProductDTO();   
         proList.setProductDisplayStatus(rs.getInt("productDisplayStatus"));
         proList.setProductSalePrice(rs.getInt("productSalePrice"));
         proList.setProductInventoryQuantity(rs.getInt("productInventoryQuantity"));
         proList.setProductRegistrationDate(rs.getDate("productRegistrationDate"));
         proList.setProductName(rs.getString("productName"));
         proList.setProductSaleCount(rs.getInt("productSaleCount"));
         proList.setProductDiscountStatus(rs.getInt("productDiscountStatus"));
         proList.setProductOriginalPrice(rs.getInt("productOriginalPrice"));
         proList.setProductCostPrice(rs.getInt("productCostPrice"));
         proList.setProductPaymentType(rs.getString("productPaymentType"));
         proList.setProductContent(rs.getString("productContent"));
         proList.setProductImage(rs.getString("productImage"));
         proList.setProductHashtags(rs.getString("productHashtags"));
         proList.setMainCategory(rs.getString("mainCategory"));
         proList.setSubCategory(rs.getString("subCategory"));
         proList.setProductBest(rs.getInt("productBest"));
         proList.setProductCode(rs.getString("productCode"));
         
         pstmt.executeUpdate();   
      } catch (SQLException e) {
         e.printStackTrace();
      }finally {
         MyDBConnection.close(rs, pstmt, con);
      }
   }

   
   
//  [ 1-2 ] 삽입하고 처리결과를 넘겨주기 | 성공;1 실패-1 리턴
 public int productInsertCheck (ProductDTO dto) {
	int result = -1;
    
	try {
    	
       con = MyDBConnection.getConnection();
       
       pstmt = con.prepareStatement("insert into productManagement (productDisplayStatus, productSalePrice, productInventoryQuantity, productRegistrationDate, productName, productSaleCount, productDiscountStatus, productOriginalPrice, productCostPrice, productPaymentType, productContent, productImage, productHashtags, mainCategory, subCategory, productBest, productCode) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
       
       pstmt.setInt(1, dto.getProductDisplayStatus());
       pstmt.setInt(2, dto.getProductSalePrice());
       pstmt.setInt(3, dto.getProductInventoryQuantity());
       pstmt.setDate(4, dto.getProductRegistrationDate());
       pstmt.setString(5, dto.getProductName());
       pstmt.setInt(6, dto.getProductSaleCount());
       pstmt.setInt(7, dto.getProductDiscountStatus());
       pstmt.setInt(8, dto.getProductOriginalPrice());
       pstmt.setInt(9, dto.getProductCostPrice());
       pstmt.setString(10, dto.getProductPaymentType());
       pstmt.setString(11, dto.getProductContent());
       pstmt.setString(12, dto.getProductImage());
       pstmt.setString(13, dto.getProductHashtags());
       pstmt.setString(14, dto.getMainCategory());
       pstmt.setString(15, dto.getSubCategory());
       pstmt.setInt(16, dto.getProductBest());   
       pstmt.setString(17, dto.getProductCode());   
       
       
       result = pstmt.executeUpdate();   
       
    } catch (SQLException e) {
       e.printStackTrace();
    } finally {
       MyDBConnection.close(rs, pstmt, con);
    }
    return result;
 }

// [ 2 ] Update
   
   public void productUpdate(ProductDTO dto) {

      try {
         con = MyDBConnection.getConnection();
         pstmt = con.prepareStatement(PRODUCT_UPDATE);
         
         pstmt.setInt(1, dto.getProductDisplayStatus());
         pstmt.setInt(2, dto.getProductSalePrice());
         pstmt.setInt(3, dto.getProductInventoryQuantity());
         pstmt.setDate(4, dto.getProductRegistrationDate());
         pstmt.setString(5, dto.getProductName());
         pstmt.setInt(6, dto.getProductSaleCount());
         pstmt.setInt(7, dto.getProductDiscountStatus());
         pstmt.setInt(8, dto.getProductOriginalPrice());
         pstmt.setInt(9, dto.getProductCostPrice());
         pstmt.setString(10, dto.getProductPaymentType());
         pstmt.setString(11, dto.getProductContent());
         pstmt.setString(12, dto.getProductImage());
         pstmt.setString(13, dto.getProductHashtags());
         pstmt.setString(14, dto.getMainCategory());
         pstmt.setString(15, dto.getSubCategory());
         pstmt.setInt(16, dto.getProductBest());   
         pstmt.setString(17, dto.getProductCode());   

         pstmt.executeUpdate();
         
      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         MyDBConnection.close(rs, pstmt, con);
      }
      
   }
   
   
// [ 2-2 ] Update - 삽입하고 처리결과를 넘겨주기 | 성공;1 실패-1 리턴
   public int productUpdateCheck (ProductDTO dto) {
	   int result = -1;
	   try {
 	
	    con = MyDBConnection.getConnection();
	    
	    pstmt = con.prepareStatement("insert into productManagement (productDisplayStatus, productSalePrice, productInventoryQuantity, productRegistrationDate, productName, productSaleCount, productDiscountStatus, productOriginalPrice, productCostPrice, productPaymentType, productContent, productImage, productHashtags, mainCategory, subCategory, productBest, productCode) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
	    
	    pstmt.setInt(1, dto.getProductDisplayStatus());
	    pstmt.setInt(2, dto.getProductSalePrice());
	    pstmt.setInt(3, dto.getProductInventoryQuantity());
	    pstmt.setDate(4, dto.getProductRegistrationDate());
	    pstmt.setString(5, dto.getProductName());
	    pstmt.setInt(6, dto.getProductSaleCount());
	    pstmt.setInt(7, dto.getProductDiscountStatus());
	    pstmt.setInt(8, dto.getProductOriginalPrice());
	    pstmt.setInt(9, dto.getProductCostPrice());
	    pstmt.setString(10, dto.getProductPaymentType());
	    pstmt.setString(11, dto.getProductContent());
	    pstmt.setString(12, dto.getProductImage());
	    pstmt.setString(13, dto.getProductHashtags());
	    pstmt.setString(14, dto.getMainCategory());
	    pstmt.setString(15, dto.getSubCategory());
	    pstmt.setInt(16, dto.getProductBest());   
	    pstmt.setString(17, dto.getProductCode());   
    
    
	    result = pstmt.executeUpdate();   
    
	 } catch (SQLException e) {
	    e.printStackTrace();
	 } finally {
	    MyDBConnection.close(rs, pstmt, con);
	 }
	 return result;
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
            product.setProductRegistrationDate(rs.getDate("productRegistrationDate"));
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
   
   // mainCategory로 그룹화 - 카테고리별 제품 몇개?
//   private String productListCategory = "SELECT mainCategory, COUNT(*) AS count FROM productManagement GROUP BY mainCategory";
//
//   public List<ProductDTO> getProductListByCategory() {
//       List<ProductDTO> productList = new ArrayList<ProductDTO>();
//
//       try {
//           con = MyDBConnection.getConnection();
//           pstmt = con.prepareStatement(productListCategory);
//           rs = pstmt.executeQuery();
//
//           while (rs.next()) {
//               ProductDTO product = new ProductDTO();
//               product.setMainCategory(rs.getString("mainCategory"));
//               product.setSubCategory(rs.getString("subCategory")); // 이 부분은 DTO에 추가되어야 함
//               productList.add(product);
//           }
//       } catch (SQLException e) {
//           e.printStackTrace();
//       } finally {
//           MyDBConnection.close(rs, pstmt, con);
//       }
//       return productList;
//   }

}
