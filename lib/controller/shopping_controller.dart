import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/model/product_model.dart';

class ShoppingController extends GetxController{
  var products=<ProductModel>[].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchProducts();
  }
  fetchProducts() async{
    await Future.delayed(Duration(seconds: 1));
    var productResult = [
      ProductModel(
          id: 1,
          price: 30,
          productDescription: 'some description about product',
          productImage: 'abd',
          productName: 'FirstProd'),
      ProductModel(
          id: 2,
          price: 40,
          productDescription: 'some description about product',
          productImage: 'abd',
          productName: 'SecProd'),
      ProductModel(
          id: 3,
          price: 49.5,
          productDescription: 'some description about product',
          productImage: 'abd',
          productName: 'ThirdProd'),
    ];
    products.value=productResult;
  }
}