// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trancaominhthang_205051813/controller/cart.dart';
import 'package:trancaominhthang_205051813/controller/product.dart';
import 'package:trancaominhthang_205051813/models/product.dart';

class ProductCardCart extends StatelessWidget {
  Product? currentProduct;
  int? quantity = 0;
  ProductCardCart({Key? key, this.currentProduct, this.quantity})
      : super(key: key);

  int currentIndex = 0; // Biến này để duyệt qua danh sách sản phẩm

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(currentProduct?.productName);
        Get.find<CartController>().addToCart(currentProduct!);
      },
      child: Container(
        height: 238,
        width: 141,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(currentProduct!.imgPath!),
              Text(
                currentProduct!.productName!,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(fontSize: 12),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    quantity!.toString(),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        fontSize: 10,
                        decoration: TextDecoration.lineThrough,
                        decorationColor: Colors.red),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
