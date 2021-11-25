import 'package:flutter/material.dart';

class ProductProvider with ChangeNotifier {
  late String _productName = 'No name';
  double _productPrice = 0;

  String get productName => this._productName;

  double get productPrice => this._productPrice;

  void setProduct({required String name, required price}) {
    this._productName = name;
    this._productPrice = price;
  }

  void reset() {
    this._productName = 'No name';
    this._productPrice = 0;
  }
}
