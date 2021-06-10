import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:getx_pattern/app/constants/controllers.dart';
import 'package:getx_pattern/app/model/product.dart';
import 'package:getx_pattern/app/ui/page/widgets/custom_text.dart';

class CommentWidget extends StatelessWidget {
  const CommentWidget({Key key, this.id}) : super(key: key);
  final String id;

  @override
  Widget build(BuildContext context) {
    List<Product> products;

    return StreamBuilder(
        stream: productController.getProductByID(id),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasData) {
            products = snapshot.data.docs
                .map((doc) => Product.fromMap(doc.data()))
                .toList();

            return Column(
                children: products[0]
                    .rate
                    .reversed
                    .map((item) => ListTile(
                          trailing: RatingBar.builder(
                            initialRating: double.parse("${item['rate']}"),
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 18,
                            itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                          title: CustomText(
                            text: "${item['comment']}",
                          ),
                        ))
                    .toList());
          } else {
            return Text('fetching');
          }
        });
  }
}
