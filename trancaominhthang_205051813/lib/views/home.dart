import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trancaominhthang_205051813/controller/cart.dart';
import 'package:trancaominhthang_205051813/controller/product.dart';
import 'package:trancaominhthang_205051813/models/product.dart';
import 'package:trancaominhthang_205051813/widget/_header.dart';
import 'package:trancaominhthang_205051813/widget/product_card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  CartController controller = Get.put(CartController());
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
        Header("Home"),
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
            itemCount:
                productsList.length, // Thay đổi độ dài của danh sách sản phẩm
            itemBuilder: (BuildContext context, int index) {
              final product = productsList[index];
              return ProductCard(
                currentProduct: product,
              );
            },
          ),
        ),
      ]),
    );
  }
}
