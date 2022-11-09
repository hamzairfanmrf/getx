import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx/controller/shopping_controller.dart';
import 'package:getx/model/product_model.dart';


class ShoppingCart extends StatelessWidget {
   ShoppingCart({Key? key}) : super(key: key);
  final shoppingController=Get.put(ShoppingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            GetX<ShoppingController>(
              builder: (conroller) {
                return ListView.builder(
                shrinkWrap: true,
                itemCount: conroller.products.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                      leading: const Icon(Icons.list),
                      trailing:  Text(
                        conroller.products[index].productName,
                        style: TextStyle(color: Colors.green, fontSize: 15),
                      ),
                      title: Text("List item $index"));
                });
              }
            ),

          ],
        ),
      ),
    );
  }
}
