import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trancaominhthang_205051813/controller/cart.dart';
import 'package:trancaominhthang_205051813/widget/_header.dart';
import 'package:trancaominhthang_205051813/widget/product_cart.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});
  @override
  State<CartView> createState() => _CartViewPageState();
}

class _CartViewPageState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsetsDirectional.only(
            start: 10,
            end: 10 / 4,
          ),
        ),
      ),
      body: ListView(children: [
        Header("Giỏ hàng"),
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 10, end: 10, top: 8),
          child: GridView.builder(
            primary: false,
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              mainAxisExtent: 280,
              crossAxisCount: 2,
            ),
            itemCount: Get.find<CartController>()
                .totalItemsInCart, // Thay đổi độ dài của danh sách sản phẩm
            itemBuilder: (BuildContext context, int index) {
              final product =
                  Get.find<CartController>().cartItems.keys.elementAt(index);
              final quantity = Get.find<CartController>().cartItems[product];
              return ProductCardCart(
                currentProduct: product,
                quantity: quantity,
              );
            },
          ),
        ),
      ]),
    );
  }
}
