import 'package:flutter/material.dart';
import 'package:flutter_provider/pages/home_page.dart';
import 'package:flutter_provider/pages/product_list.dart';

class Routing {
  static const HOME_PAGE = '/';
  static const PRODUCT_LIST = '/product-list';

  static Map<String, Widget Function(BuildContext context)> buildRoutes(
      [bool showEnvironmentSelect = false]) {
    return {
      HOME_PAGE: (context) => MyHomePage(title: 'Flutter Provider'),
      PRODUCT_LIST: (context) => ProductListScreen(),
    };
  }
}
