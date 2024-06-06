import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'book_mark_view_model.dart';
export 'book_mark_view_model.dart';

class BookMarkViewWidget extends StatefulWidget {
  const BookMarkViewWidget({
    super.key,
    required this.isBookmark,
    required this.refID,
  });

  final int? isBookmark;
  final String? refID;

  @override
  State<BookMarkViewWidget> createState() => _BookMarkViewWidgetState();
}

class _BookMarkViewWidgetState extends State<BookMarkViewWidget> {
  late BookMarkViewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BookMarkViewModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (!(FFAppState()
          .bookmarkList
          .unique((e) => widget.refID!)
          .isNotEmpty)) {
        FFAppState().addToBookmarkList(BookmarkDataStruct(
          isBookmark: widget.isBookmark == 1,
          refID: widget.refID,
        ));
      }
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

    return ToggleIcon(
      onPressed: () async {
        setState(() => _model.isBookmark = !_model.isBookmark!);
        _model.apiResultv2s = await SetbookmarkCall.call(
          api: FFAppState().api,
          uid: getJsonField(
            FFAppState().userData,
            r'''$.id''',
          ).toString(),
          refId: widget.refID,
        );
        if ((_model.apiResultv2s?.succeeded ?? true)) {
          if (!functions.isSuccess(getJsonField(
            (_model.apiResultv2s?.jsonBody ?? ''),
            r'''$.status''',
          ))) {
            await showDialog(
              context: context,
              builder: (alertDialogContext) {
                return AlertDialog(
                  title: Text(getJsonField(
                    (_model.apiResultv2s?.jsonBody ?? ''),
                    r'''$.msg''',
                  ).toString()),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(alertDialogContext),
                      child: Text('Ok'),
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
                title: Text((_model.apiResultv2s?.exceptionMessage ?? '')),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(alertDialogContext),
                    child: Text('Ok'),
                  ),
                ],
              );
            },
          );
        }

        setState(() {});
      },
      value: _model.isBookmark!,
      onIcon: Icon(
        Icons.favorite_rounded,
        color: FlutterFlowTheme.of(context).error,
        size: 28.0,
      ),
      offIcon: Icon(
        Icons.favorite_border_rounded,
        color: FlutterFlowTheme.of(context).secondaryText,
        size: 28.0,
      ),
    );
  }
}
