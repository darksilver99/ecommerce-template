import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'main_background_view_model.dart';
export 'main_background_view_model.dart';

class MainBackgroundViewWidget extends StatefulWidget {
  const MainBackgroundViewWidget({super.key});

  @override
  State<MainBackgroundViewWidget> createState() =>
      _MainBackgroundViewWidgetState();
}

class _MainBackgroundViewWidgetState extends State<MainBackgroundViewWidget> {
  late MainBackgroundViewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainBackgroundViewModel());

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
      height: double.infinity,
      child: Stack(
        children: [
          Builder(
            builder: (context) {
              if (getJsonField(
                    FFAppState().configData,
                    r'''$.background_image''',
                  ) !=
                  null) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(0.0),
                  child: CachedNetworkImage(
                    fadeInDuration: Duration(milliseconds: 500),
                    fadeOutDuration: Duration(milliseconds: 500),
                    imageUrl: getJsonField(
                      FFAppState().configData,
                      r'''$.background_image''',
                    ).toString(),
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                );
              } else {
                return Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryText,
                  ),
                );
              }
            },
          ),
          Opacity(
            opacity: 0.5,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
