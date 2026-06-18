import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'alert_banner_model.dart';
export 'alert_banner_model.dart';

class AlertBannerWidget extends StatefulWidget {
  const AlertBannerWidget({
    super.key,
    bool? visible,
    String? title,
    String? message,
  })  : this.visible = visible ?? false,
        this.title = title ?? '',
        this.message = message ?? '';

  final bool visible;
  final String title;
  final String message;

  @override
  State<AlertBannerWidget> createState() => _AlertBannerWidgetState();
}

class _AlertBannerWidgetState extends State<AlertBannerWidget> {
  late AlertBannerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AlertBannerModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: valueOrDefault<bool>(
        widget.visible,
        false,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
        child: Container(
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFFFFF4E5),
              borderRadius: BorderRadius.circular(16.0),
              shape: BoxShape.rectangle,
              border: Border.all(
                color: Color(0xFFFFE0B2),
                width: 1.0,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Container(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.warning_amber_rounded,
                      color: FlutterFlowTheme.of(context).tertiary,
                      size: 24.0,
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.title,
                            style: FlutterFlowTheme.of(context)
                                .labelLarge
                                .override(
                                  font: GoogleFonts.roboto(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context).secondary,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .fontStyle,
                                  lineHeight: 1.33,
                                ),
                          ),
                          Text(
                            widget.message,
                            maxLines: 2,
                            style: FlutterFlowTheme.of(context)
                                .bodySmall
                                .override(
                                  font: GoogleFonts.roboto(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context).secondary,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .fontStyle,
                                  lineHeight: 1.38,
                                ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ].divide(SizedBox(height: 2.0)),
                      ),
                    ),
                  ].divide(SizedBox(width: 16.0)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
