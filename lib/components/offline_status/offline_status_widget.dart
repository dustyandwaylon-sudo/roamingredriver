import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'offline_status_model.dart';
export 'offline_status_model.dart';

class OfflineStatusWidget extends StatefulWidget {
  const OfflineStatusWidget({
    super.key,
    bool? isOffline,
  }) : this.isOffline = isOffline ?? false;

  final bool isOffline;

  @override
  State<OfflineStatusWidget> createState() => _OfflineStatusWidgetState();
}

class _OfflineStatusWidgetState extends State<OfflineStatusWidget> {
  late OfflineStatusModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OfflineStatusModel());
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
        widget.isOffline,
        false,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          shape: BoxShape.rectangle,
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
                  Icons.signal_wifi_off_rounded,
                  size: 18.0,
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    'You\'re offline. Your review will sync automatically once you\'re back in range.',
                    style: FlutterFlowTheme.of(context).bodySmall.override(
                          font: GoogleFonts.roboto(
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodySmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodySmall
                                .fontStyle,
                          ),
                          letterSpacing: 0.0,
                          fontWeight:
                              FlutterFlowTheme.of(context).bodySmall.fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodySmall.fontStyle,
                          lineHeight: 1.38,
                        ),
                  ),
                ),
              ].divide(SizedBox(width: 8.0)),
            ),
          ),
        ),
      ),
    );
  }
}
