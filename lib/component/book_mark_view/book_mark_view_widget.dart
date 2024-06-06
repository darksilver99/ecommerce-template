import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
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
  });

  final int? isBookmark;

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
      _model.isBookmark = widget.isBookmark == 1;
      setState(() {});
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
    return ToggleIcon(
      onPressed: () async {
        setState(() => _model.isBookmark = !_model.isBookmark!);
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
