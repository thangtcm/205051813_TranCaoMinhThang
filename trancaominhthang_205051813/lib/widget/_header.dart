// ignore_for_file: sort_child_properties_last, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:trancaominhthang_205051813/controller/cart.dart';
import 'package:trancaominhthang_205051813/views/cart.dart';

class Header extends StatelessWidget {
  String NameHeader = "Default";
  Header(this.NameHeader, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Row(children: [
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            NameHeader,
            style: const TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        const Spacer(),
        badges.Badge(
          showBadge: true,
          ignorePointer: false,
          badgeContent: Text(
            Get.find<CartController>().totalItemsInCart.toString(),
            style: const TextStyle(color: Colors.white),
          ),
          badgeStyle: const badges.BadgeStyle(
            badgeColor: Colors.blueAccent,
          ),
          child: const Icon(
            Icons.shopping_cart_outlined,
            size: 25,
            color: Colors.black,
          ),
          badgeAnimation: const badges.BadgeAnimation.scale(
            animationDuration: Duration(seconds: 1),
            colorChangeAnimationDuration: Duration(seconds: 1),
            loopAnimation: false,
            colorChangeAnimationCurve: Curves.easeOutQuart,
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (content) => const CartView()));
          },
        )
      ]),
    );
  }
}
