class Product {
  String _productName = '';
  String _productDescr = '';
  String _productPrice = '';

  void setProductName(productName) {
    this._productName = productName;
  }

  void setProductDescr(productDescr) {
    this._productDescr = productDescr;
  }

  void setProductPrice(productPrice) {
    this._productPrice = productPrice;
  }

  String getProductName() {
    return _productName;
  }

  String getProductDescr() {
    return _productDescr;
  }

  String getProductPrice() {
    return _productPrice;
  }
}
