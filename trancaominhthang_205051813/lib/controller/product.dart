// ignore_for_file: non_constant_identifier_names, unnecessary_null_comparison, unnecessary_overrides

import 'package:get/get.dart';
import 'package:trancaominhthang_205051813/models/cartitem.dart';
import 'package:trancaominhthang_205051813/models/product.dart';

class ProductController extends GetxController {
  var cartItem = CartItem().obs;
  RxInt? total = 0.obs;
  @override
  void onReady() {
    super.onReady();
  }

  void AddCartItem(Product product, int quantity) {
    try {
      if (cartItem.value == null) {
        cartItem.value = CartItem(quantity: quantity, product: [product]);
      } else {
        cartItem.update((val) {
          val!.quantity = quantity;
          val.product!.add(product);
          total?.value += 1;
        });
      }
    } catch (ex) {
      print('Lỗi: ${ex}');
    }
  }
}
