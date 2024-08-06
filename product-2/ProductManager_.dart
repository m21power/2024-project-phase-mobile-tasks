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
    var product = new Product(productName, productDescr, productPrice);
    products.add(product);
    len = products.length;
  }

  void viewAllProduct() {
    var product;
    for (int i = 0; i < len; i++) {
      product = products[i];
      print("Product Name: ");
      print(product.productName);
      print("Product Description: ");
      print(product.productDescr);
      print("Product Price: ");
      print(product.productPrice);
      print("**********************************************");
    }
  }

  void viewSingleProduct() {
    print("Enter the name of the Product: ");
    String? productName = stdin.readLineSync();
    var product;
    for (int i = 0; i < len; i++) {
      product = products[i];
      if (productName == product.productName) {
        print("Product Name: ");
        print(product.productName);
        print("Product Description: ");
        print(product.productDescr);
        print("Product Price: ");
        print(product.productPrice);
        return;
      }
    }
    print("No product found ");
  }

  void editProduct() {
    print("Enter the name of the Product: ");
    String? productName = stdin.readLineSync();
    var product;
    for (int i = 0; i < len; i++) {
      product = products[i];
      if (productName == product.productName) {
        var choice;
        do {
          print("Press 0 for changing name: ");
          print("Press 1 for changing the description: ");
          print("Press 2 for changing the price: ");
          choice = stdin.readByteSync();
          if (choice == 0) {
            print("Enter product name: ");
            product[i].productName = stdin.readLineSync();
          } else if (choice == 1) {
            print("Write product description: ");
            product.productDescr = stdin.readLineSync();
          } else if (choice == 2) {}
          print("Enter the Price of the product: ");
          product.productPrice = stdin.readLineSync();
        } while (choice != 0 && choice != 1 && choice != 2);
      }
    }
  }

  void deleteProduct() {
    print("Enter the name of the Product: ");
    String? productName = stdin.readLineSync();
    var product;
    for (int i = 0; i < len; i++) {
      product = products[i];
      if (productName == product.productName) {
        products.removeAt(i);
        len = products.length;
        return;
      }
    }
    print("No product found ");
  }
}
