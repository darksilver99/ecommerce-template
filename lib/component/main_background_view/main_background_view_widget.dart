import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
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
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(0.0),
            child: Image.network(
              'https://picsum.photos/seed/598/600',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Opacity(
            opacity: 0.5,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
