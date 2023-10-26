import 'package:get/get.dart';
import 'package:trancaominhthang_205051813/models/product.dart';

class CartController extends GetxController {
  final RxMap<Product, int> cartItems = RxMap<Product, int>();
  int get totalItemsInCart => cartItems.length;
  void addToCart(Product product) {
    if (cartItems.containsKey(product)) {
      cartItems[product] = (cartItems[product]! + 1)!;
    } else {
      cartItems[product] = 1;
    }
  }

  void removeFromCart(Product product) {
    if (cartItems.containsKey(product)) {
      if (cartItems[product]! > 1) {
        cartItems[product] = (cartItems[product]! - 1);
      } else {
        cartItems.remove(product);
      }
    }
  }
}
