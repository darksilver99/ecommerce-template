import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'splash_screen_page_widget.dart' show SplashScreenPageWidget;
import 'package:flutter/material.dart';

class SplashScreenPageModel extends FlutterFlowModel<SplashScreenPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getmainconfig)] action in SplashScreenPage widget.
  ApiCallResponse? apiResult46z;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
