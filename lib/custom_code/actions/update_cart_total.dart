// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future updateCartTotal(
  int id,
  int total,
) async {
  // Add your function code here!
  print("updateCartTotal : $id : $total");
  int index =
      FFAppState().cartDataList.indexWhere((element) => element.id == id);
  if (total > 0) {
    FFAppState().updateCartDataListAtIndex(index, (e) => e..total = total);
  } else {
    FFAppState().removeAtIndexFromCartDataList(index);
  }
  int totalSum = FFAppState()
      .cartDataList
      .map((element) => element.total)
      .reduce((value, element) => value + element);
  FFAppState().update(() {
    FFAppState().totalProductInCart = totalSum;
  });
}
