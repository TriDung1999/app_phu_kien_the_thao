import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/constants/controllers.dart';
import 'package:getx_pattern/app/ui/page/cart/widgets/cart_item_widget.dart';
import 'package:getx_pattern/app/ui/page/widgets/custom_btn.dart';
import 'package:getx_pattern/app/ui/page/widgets/custom_text.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("your_cart".tr,
              style: TextStyle(fontSize: 18.0, color: Color(0xFF545D68))),
        ),
        body: Stack(
          children: [
            ListView(
              children: [
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: CustomText(
                    text: "your_cart".tr,
                    size: 24,
                    weight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Obx(() => userController.userModel.value.cart.length > 0
                    ? Column(
                        children: userController.userModel.value.cart
                            .map((cartItem) => CartItemWidget(
                                  cartItem: cartItem,
                                ))
                            .toList(),
                      )
                    : Container(
                        child: Center(
                            child:
                                CustomText(text: "cart_is_empty".tr, size: 20)),
                      )),
              ],
            ),
            Positioned(
                bottom: 30,
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(8),
                    child: Obx(
                      () => CustomButton(
                          text: "pay".tr +
                              " (\$${cartController.totalCartPrice.value.toStringAsFixed(2)})",
                          onTap: () {
                            orderController.addToCollection();
                          }),
                    )))
          ],
        ));
  }
}
