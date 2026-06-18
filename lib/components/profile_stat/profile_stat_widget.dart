import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'profile_stat_model.dart';
export 'profile_stat_model.dart';

class ProfileStatWidget extends StatefulWidget {
  const ProfileStatWidget({
    super.key,
    String? value,
    String? label,
  })  : this.value = value ?? '12',
        this.label = label ?? 'Saved Trails';

  final String value;
  final String label;

  @override
  State<ProfileStatWidget> createState() => _ProfileStatWidgetState();
}

class _ProfileStatWidgetState extends State<ProfileStatWidget> {
  late ProfileStatModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileStatModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          valueOrDefault<String>(
            widget.value,
            '12',
          ),
          style: FlutterFlowTheme.of(context).titleMedium.override(
                font: GoogleFonts.cabin(
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                ),
                color: FlutterFlowTheme.of(context).primaryText,
                letterSpacing: 0.0,
                fontWeight: FontWeight.bold,
                fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                lineHeight: 1.35,
              ),
        ),
        Text(
          valueOrDefault<String>(
            widget.label,
            'Saved Trails',
          ),
          style: FlutterFlowTheme.of(context).labelSmall.override(
                font: GoogleFonts.roboto(
                  fontWeight:
                      FlutterFlowTheme.of(context).labelSmall.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).labelSmall.fontStyle,
                ),
                color: FlutterFlowTheme.of(context).secondaryText,
                letterSpacing: 0.0,
                fontWeight: FlutterFlowTheme.of(context).labelSmall.fontWeight,
                fontStyle: FlutterFlowTheme.of(context).labelSmall.fontStyle,
                lineHeight: 1.27,
              ),
        ),
      ].divide(SizedBox(height: 4.0)),
    );
  }
}
