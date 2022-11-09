import 'package:flutter/material.dart';


class ProductModel {

  final int id;
  final String productName;
  final String productImage;
  final String productDescription;
  final double price;

  ProductModel({required this.id,required this.productName,required this.productImage,required this.productDescription,required this.price});
}