import 'package:flutter/material.dart';

import 'widgets/product_item_widget.dart';

class HomeMobile extends StatelessWidget {
  List listData = [];

  HomeMobile({Key key, @required this.listData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: .63,
      padding: const EdgeInsets.all(10),
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 10,
      children: listData.map((product) {
        return ProductItem(
          product: product,
        );
      }).toList(),
    );
  }
}
