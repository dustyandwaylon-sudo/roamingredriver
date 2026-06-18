import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'progress_model.dart';
export 'progress_model.dart';

class ProgressWidget extends StatefulWidget {
  const ProgressWidget({
    super.key,
    double? thickness,
    Color? bgColor,
  })  : this.thickness = thickness ?? 8.0,
        this.bgColor = bgColor ?? const Color(0x00000000);

  final double thickness;
  final Color bgColor;

  @override
  State<ProgressWidget> createState() => _ProgressWidgetState();
}

class _ProgressWidgetState extends State<ProgressWidget> {
  late ProgressModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProgressModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(9999.0),
      child: Container(
        height: valueOrDefault<double>(
          widget.thickness,
          8.0,
        ),
        decoration: BoxDecoration(
          color: valueOrDefault<Color>(
            widget.bgColor,
            FlutterFlowTheme.of(context).alternate,
          ),
          borderRadius: BorderRadius.circular(9999.0),
          shape: BoxShape.rectangle,
        ),
        child: Align(
          alignment: AlignmentDirectional(-1.0, 0.0),
          child: Container(),
        ),
      ),
    );
  }
}
