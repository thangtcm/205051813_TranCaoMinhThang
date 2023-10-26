import 'package:trancaominhthang_205051813/utils/images.dart';

class Product {
  int? productId;
  String? productName;
  String? imgPath;
  String? productDescription;

  Product(
      {this.productId,
      this.productName,
      this.productDescription,
      this.imgPath});
}

List<Product> productsList = [
  Product(
      productId: 1,
      productName: "Bia",
      imgPath: imgbeer,
      productDescription: "Bia là abc....."),
  Product(
      productId: 2,
      productName: "Nước Dừa",
      imgPath: imgcoconutcocktail,
      productDescription: "Nước Dừa là abc....."),
  Product(
      productId: 3,
      productName: "Nước chanh",
      imgPath: imglemonade,
      productDescription: "Nước chanh là abc....."),
  Product(
      productId: 4,
      productName: "Kem",
      imgPath: imgmilkshake,
      productDescription: "Kem là abc....."),
  Product(
      productId: 5,
      productName: "Nước cam",
      imgPath: imgorangejuice,
      productDescription: "Nước cam là abc....."),
  Product(
      productId: 6,
      productName: "Bia",
      imgPath: imgbeer,
      productDescription: "Bia là abc....."),
  Product(
      productId: 7,
      productName: "Bia",
      imgPath: imgbeer,
      productDescription: "Bia là abc....."),
];
