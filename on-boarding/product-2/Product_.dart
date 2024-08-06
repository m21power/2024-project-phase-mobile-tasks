class Product {
  String productName = '';
  String productDescr = '';
  String productPrice = '';
  
  void setProductName(productName) {
    this.productName = productName;
  }

  void setProductDescr(productDescr) {
    this.productDescr = productDescr;
  }

  void setProductPrice(productPrice) {
    this.productPrice = productPrice;
  }

  String getProductName() {
    return productName;
  }

  String getProductDescr() {
    return productDescr;
  }

  String getProductPrice() {
    return productPrice;
  }
}
