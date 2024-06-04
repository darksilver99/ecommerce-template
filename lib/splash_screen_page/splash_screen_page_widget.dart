import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'splash_screen_page_model.dart';
export 'splash_screen_page_model.dart';

class SplashScreenPageWidget extends StatefulWidget {
  const SplashScreenPageWidget({super.key});

  @override
  State<SplashScreenPageWidget> createState() => _SplashScreenPageWidgetState();
}

class _SplashScreenPageWidgetState extends State<SplashScreenPageWidget> {
  late SplashScreenPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SplashScreenPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResult46z = await GetmainconfigCall.call(
        customerID: '1',
      );
      if ((_model.apiResult46z?.succeeded ?? true)) {
        if (functions.isSuccess(getJsonField(
          (_model.apiResult46z?.jsonBody ?? ''),
          r'''$.status''',
        ))) {
          FFAppState().api = getJsonField(
            (_model.apiResult46z?.jsonBody ?? ''),
            r'''$.data.api''',
          ).toString().toString();
          FFAppState().domain = getJsonField(
            (_model.apiResult46z?.jsonBody ?? ''),
            r'''$.data.domain''',
          ).toString().toString();

          context.goNamed('HomePage');
        } else {
          await showDialog(
            context: context,
            builder: (alertDialogContext) {
              return AlertDialog(
                title: Text(getJsonField(
                  (_model.apiResult46z?.jsonBody ?? ''),
                  r'''$.msg''',
                ).toString().toString()),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(alertDialogContext),
                    child: const Text('Ok'),
                  ),
                ],
              );
            },
          );
        }
      } else {
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return AlertDialog(
              title: Text((_model.apiResult46z?.exceptionMessage ?? '')),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: const Text('Ok'),
                ),
              ],
            );
          },
        );
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Text(
                  'Splash screen',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 32.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
