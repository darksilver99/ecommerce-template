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
  print(FFAppState().cartDataList);
  return;
  if (total > 0) {
    FFAppState().cartDataList.where((element) => element.id == id).first.total =
        total;
  } else {
    FFAppState().cartDataList.removeWhere((element) => element.id == id);
  }
  int totalSum = FFAppState()
      .cartDataList
      .map((element) => element.total)
      .reduce((value, element) => value + element);
  FFAppState().update(() {
    FFAppState().totalProductInCart = totalSum;
  });
}
