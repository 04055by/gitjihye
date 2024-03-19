package com.choong.biz.product;

import java.sql.Date;

public class ProductDTO {
   private String productCode;
   private int productDisplayStatus;
   private int productSalePrice;
   private int productInventoryQuantity;
   private Date productRegistrationDate;
   private String productName;
   private int productSaleCount;
   private int productDiscountStatus;
   private int productOriginalPrice;
   private int productCostPrice;
   private String productPaymentType;
   private String productContent;
   private String productImage;
   private String productHashtags;
   private String mainCategory;
   private String subCategory;
   private int productBest;
   
   //생성자
   public ProductDTO() {
      super();
   }

   public ProductDTO(String productCode, int productDisplayStatus, int productSalePrice, int productInventoryQuantity,
         Date productRegistrationDate, String productName, int productSaleCount, int productDiscountStatus,
         int productOriginalPrice, int productCostPrice, String productPaymentType, String productContent,
         String productImage, String productHashtags, String mainCategory, String subCategory, int productBest) {
      super();
      this.productCode = productCode;
      this.productDisplayStatus = productDisplayStatus;
      this.productSalePrice = productSalePrice;
      this.productInventoryQuantity = productInventoryQuantity;
      this.productRegistrationDate = productRegistrationDate;
      this.productName = productName;
      this.productSaleCount = productSaleCount;
      this.productDiscountStatus = productDiscountStatus;
      this.productOriginalPrice = productOriginalPrice;
      this.productCostPrice = productCostPrice;
      this.productPaymentType = productPaymentType;
      this.productContent = productContent;
      this.productImage = productImage;
      this.productHashtags = productHashtags;
      this.mainCategory = mainCategory;
      this.subCategory = subCategory;
      this.productBest = productBest;
   }

   //toString
   @Override
   public String toString() {
      return "proListDTO [productCode=" + productCode + ", productDisplayStatus=" + productDisplayStatus
            + ", productSalePrice=" + productSalePrice + ", productInventoryQuantity=" + productInventoryQuantity
            + ", productRegistrationDate=" + productRegistrationDate + ", productName=" + productName
            + ", productSaleCount=" + productSaleCount + ", productDiscountStatus=" + productDiscountStatus
            + ", productOriginalPrice=" + productOriginalPrice + ", productCostPrice=" + productCostPrice
            + ", productPaymentType=" + productPaymentType + ", productContent=" + productContent
            + ", productImage=" + productImage + ", productHashtags=" + productHashtags + ", mainCategory="
            + mainCategory + ", subCategory=" + subCategory + ", productBest=" + productBest + "]";
   }

   
   //게터세터
   public String getProductCode() {
      return productCode;
   }

   public void setProductCode(String productCode) {
      this.productCode = productCode;
   }

   public int getProductDisplayStatus() {
      return productDisplayStatus;
   }

   public void setProductDisplayStatus(int productDisplayStatus) {
      this.productDisplayStatus = productDisplayStatus;
   }

   public int getProductSalePrice() {
      return productSalePrice;
   }

   public void setProductSalePrice(int productSalePrice) {
      this.productSalePrice = productSalePrice;
   }

   public int getProductInventoryQuantity() {
      return productInventoryQuantity;
   }

   public void setProductInventoryQuantity(int productInventoryQuantity) {
      this.productInventoryQuantity = productInventoryQuantity;
   }

   public Date getProductRegistrationDate() {
      return productRegistrationDate;
   }

   public void setProductRegistrationDate(Date productRegistrationDate) {
      this.productRegistrationDate = productRegistrationDate;
   }

   public String getProductName() {
      return productName;
   }

   public void setProductName(String productName) {
      this.productName = productName;
   }

   public int getProductSaleCount() {
      return productSaleCount;
   }

   public void setProductSaleCount(int productSaleCount) {
      this.productSaleCount = productSaleCount;
   }

   public int getProductDiscountStatus() {
      return productDiscountStatus;
   }

   public void setProductDiscountStatus(int productDiscountStatus) {
      this.productDiscountStatus = productDiscountStatus;
   }

   public int getProductOriginalPrice() {
      return productOriginalPrice;
   }

   public void setProductOriginalPrice(int productOriginalPrice) {
      this.productOriginalPrice = productOriginalPrice;
   }

   public int getProductCostPrice() {
      return productCostPrice;
   }

   public void setProductCostPrice(int productCostPrice) {
      this.productCostPrice = productCostPrice;
   }

   public String getProductPaymentType() {
      return productPaymentType;
   }

   public void setProductPaymentType(String productPaymentType) {
      this.productPaymentType = productPaymentType;
   }

   public String getProductContent() {
      return productContent;
   }

   public void setProductContent(String productContent) {
      this.productContent = productContent;
   }

   public String getProductImage() {
      return productImage;
   }

   public void setProductImage(String productImage) {
      this.productImage = productImage;
   }

   public String getProductHashtags() {
      return productHashtags;
   }

   public void setProductHashtags(String productHashtags) {
      this.productHashtags = productHashtags;
   }

   public String getMainCategory() {
      return mainCategory;
   }

   public void setMainCategory(String mainCategory) {
      this.mainCategory = mainCategory;
   }

   public String getSubCategory() {
      return subCategory;
   }

   public void setSubCategory(String subCategory) {
      this.subCategory = subCategory;
   }

   public int getProductBest() {
      return productBest;
   }

   public void setProductBest(int productBest) {
      this.productBest = productBest;
   }
   
}
