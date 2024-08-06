import 'ProductManager_.dart';
import 'dart:io';

void main() {
  var choice;
  var product = new ProductManager();
    print("**********************************************");
  do {
    print("Press 1 to Insert: ");
    print("Press 2 to Single View: ");
    print("Press 3 to View All: ");
    print("Press 4 to Update: ");
    print("Press 5 to delete: ");
    print("Press 0 to quit: ");
    choice = stdin.readLineSync();
    if (choice == '1') {
      print("**********************************************");
      product.newProduct();
    } else if (choice == '2') {
      print("**********************************************");
      product.viewSingleProduct();
    } else if (choice == '3') {
      print("**********************************************");
      product.viewAllProduct();
    } else if (choice == '4') {
      print("**********************************************");
      product.editProduct();
    } else if (choice == '5') {
      print("**********************************************");
      product.deleteProduct();
    } else if (choice != '0') {
      print("Please! Insert the correct input.");
    }
  print("**********************************************");
  } while (choice != '0');
}

