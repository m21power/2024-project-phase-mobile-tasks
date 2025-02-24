import 'dart:io';
import 'Product_.dart';

class ProductManager {
  var products = [];
  var len;
  void newProduct() {
    print("Enter product name: ");
    String? productName = stdin.readLineSync();
    print("Write product description: ");
    String? productDescr = stdin.readLineSync();
    print("Enter the Price of the product: ");
    String? productPrice = stdin.readLineSync();
    var product = new Product();
    product.setProductName(productName);
    product.setProductDescr(productDescr);
    product.setProductPrice(productPrice);
    products.add(product);
    len = products.length;
  }

  void viewAllProduct() {
    for (int i = 0; i < len; i++) {
      print("Product Name: ");
        print(products[i].getProductName());
        print("Product Description: ");
        print(products[i].getProductDescr());
        print("Product Price: ");
        print(products[i].getProductPrice());
      print("**********************************************");
    }
  }

  void viewSingleProduct() {
    print("Enter the name of the Product: ");
    String? productName = stdin.readLineSync();
    for (int i = 0; i < len; i++) {
      if (productName == products[i].getProductName()) {
        print("Product Name: ");
        print(products[i].getProductName());
        print("Product Description: ");
        print(products[i].getProductDescr());
        print("Product Price: ");
        print(products[i].getProductPrice());
        return;
      }
    }
    print("No product found ");
  }

  void editProduct() {
    print("Enter the name of the Product: ");
    String? productName = stdin.readLineSync();
    for (int i = 0; i < len; i++) {
      if (productName == products[i].getProductName()) {
        var choice;
        do {
          print("Press 0 for changing name: ");
          print("Press 1 for changing the description: ");
          print("Press 2 for changing the price: ");
          print("Press 3 to quit ");

          choice = stdin.readLineSync();
          if (choice == '0') {
            print("Enter product name: ");
            products[i].setProductName(stdin.readLineSync());
          } else if (choice == '1') {
            print("Write product description: ");
            products[i].setProductDescr(stdin.readLineSync());
          } else if (choice == '2') {
            print("Enter the Price of the product: ");
            products[i].setProductPrice(stdin.readLineSync());
          }
        } while (choice != '3');
        return;
      }
    }
    print("Product not found ");
  }

  void deleteProduct() {
    print("Enter the name of the Product: ");
    String? productName = stdin.readLineSync();
    var product;
    for (int i = 0; i < len; i++) {
      product = products[i];
      if (productName == product.getProductName) {
        products.removeAt(i);
        len = products.length;
        return;
      }
    }
    print("No product found ");
  }
}
