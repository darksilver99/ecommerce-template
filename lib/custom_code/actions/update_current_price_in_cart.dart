// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future updateCurrentPriceInCart(
  double currentPrice,
  int id,
) async {
  // Add your function code here!
  print("updateCurrentPriceInCart");
  print("$id : $currentPrice");

  int index =
      FFAppState().cartDataList.indexWhere((element) => element.id == id);
  FFAppState().updateCartDataListAtIndex(index, (e) => e..price = currentPrice);

  double totalSum = FFAppState()
      .cartDataList
      .map((element) => element.price * element.total)
      .reduce((sum, element) => sum + element);

  FFAppState().update(() {
    FFAppState().totalPriceInCart = totalSum;
  });
}
