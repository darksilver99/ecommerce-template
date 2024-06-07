import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

bool isSuccess(dynamic status) {
  return status == 1 ? true : false;
}

String getProductIDFromCart(List<CartDataStruct> cartList) {
  if (cartList.isEmpty) {
    return "-";
  }

  return cartList.map((cart) => cart.id.toString()).join(',');
}

int getIndexFromCartList(
  List<CartDataStruct>? cartList,
  CartDataStruct? cartData,
) {
  return 1;
}
