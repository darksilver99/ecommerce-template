import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/component/no_data_view/no_data_view_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'payment_detail_page_widget.dart' show PaymentDetailPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PaymentDetailPageModel extends FlutterFlowModel<PaymentDetailPageWidget> {
  ///  Local state fields for this page.

  int? paymentSelected;

  bool isLoading = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (insertorder)] action in Container widget.
  ApiCallResponse? apiResultmmj;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
