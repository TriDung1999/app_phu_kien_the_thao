import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/controller/product_controller.dart';
import 'package:getx_pattern/app/model/product.dart';
import 'package:getx_pattern/app/ui/page/home/home_mobile.dart';
import 'package:getx_pattern/app/ui/page/widgets/custom_text.dart';

class ProductPage extends GetView<ProductController> {
  List<Product> products = [];
  String category;

  ProductPage({@required this.products, @required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('$category'),
        ),
        body: products.length > 0
            ? HomeMobile(listData: products)
            : Center(child: CustomText(text: "No data", size: 20)));
  }
}
