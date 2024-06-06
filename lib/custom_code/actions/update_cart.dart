// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future updateCart(dynamic productData) async {
  // Add your function code here!
  double price = productData["special_price"] > 0
      ? productData["special_price"].toDouble()
      : productData["normal_price"].toDouble();
  CartDataStruct cartData = CartDataStruct(
    id: productData["id"],
    price: price,
    uid: FFAppState().userData["id"].toString(),
    total: 1,
  );

  if (FFAppState()
      .cartDataList
      .where((element) => productData["id"] == element.id)
      .toList()
      .isEmpty) {
    FFAppState().addToCartDataList(cartData);
  } else {
    FFAppState()
        .cartDataList
        .where((element) => productData["id"] == element.id)
        .first
        .total++;
    FFAppState()
        .cartDataList
        .where((element) => productData["id"] == element.id)
        .first
        .price += price;
  }

  int totalSum = FFAppState()
      .cartDataList
      .map((element) => element.total)
      .reduce((value, element) => value + element);

  FFAppState().update(() {
    FFAppState().totalProductInCart = totalSum;
  });
}
