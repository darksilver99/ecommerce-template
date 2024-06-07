import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'counter_view_model.dart';
export 'counter_view_model.dart';

class CounterViewWidget extends StatefulWidget {
  const CounterViewWidget({
    super.key,
    required this.productID,
    required this.currentPrice,
  });

  final int? productID;
  final double? currentPrice;

  @override
  State<CounterViewWidget> createState() => _CounterViewWidgetState();
}

class _CounterViewWidgetState extends State<CounterViewWidget> {
  late CounterViewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CounterViewModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await actions.updateCurrentPriecInCart(
        widget.currentPrice!,
        widget.productID!,
      );
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0.0),
        shape: BoxShape.rectangle,
      ),
      child: FlutterFlowCountController(
        decrementIconBuilder: (enabled) => FaIcon(
          FontAwesomeIcons.minusCircle,
          color: enabled
              ? FlutterFlowTheme.of(context).primary
              : FlutterFlowTheme.of(context).alternate,
          size: 20.0,
        ),
        incrementIconBuilder: (enabled) => FaIcon(
          FontAwesomeIcons.plusCircle,
          color: enabled
              ? FlutterFlowTheme.of(context).primary
              : FlutterFlowTheme.of(context).alternate,
          size: 20.0,
        ),
        countBuilder: (count) => Text(
          count.toString(),
          style: FlutterFlowTheme.of(context).titleLarge.override(
                fontFamily: 'Outfit',
                letterSpacing: 0.0,
              ),
        ),
        count: _model.countControllerValue ??= FFAppState()
            .cartDataList
            .where((e) => e.id == widget.productID)
            .toList()
            .first
            .total,
        updateCount: (count) async {
          setState(() => _model.countControllerValue = count);
          await actions.updateCartTotal(
            widget.productID!,
            _model.countControllerValue!,
          );
        },
        stepSize: 1,
        minimum: 0,
      ),
    );
  }
}
