import 'package:getx_pattern/app/ui/page/home/home_page.dart';

import '../more/more_page.dart';
import '../order/order_page.dart';
import '../category/category_page.dart';
import 'package:flutter/material.dart';
import 'package:getx_pattern/app/ui/shared/custom_bottomAppBar.dart';

import 'package:get/get.dart';

class SharedBottomAppBar extends StatefulWidget {
  @override
  _SharedBottomAppBarState createState() => _SharedBottomAppBarState();
}

class _SharedBottomAppBarState extends State<SharedBottomAppBar> {
  Widget _lastSelected = HomePage();

  List<Widget> pages = [
    MorePage(),
    OrderPage(),
    CategoryPage(),
    HomePage(),
  ];
  List<String> titles = ['more'.tr, 'my_orders'.tr, 'Categories'.tr, 'home'.tr];

  void _selectedTab(int index) {
    setState(() {
      _lastSelected = pages[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _lastSelected,
      bottomNavigationBar: CustomBottomAppBar(
        color: Colors.grey,
        selectedColor: Theme.of(context).accentColor,
        notchedShape: CircularNotchedRectangle(),
        onTabSelected: _selectedTab,
        items: [
          BottomAppBarItem(iconData: Icons.more_horiz, text: 'more'.tr),
          BottomAppBarItem(iconData: Icons.card_travel, text: 'my_orders'.tr),
          BottomAppBarItem(iconData: Icons.favorite, text: 'Categories'.tr),
          BottomAppBarItem(iconData: Icons.home, text: 'home'.tr),
        ],
      ),
    );
  }
}
