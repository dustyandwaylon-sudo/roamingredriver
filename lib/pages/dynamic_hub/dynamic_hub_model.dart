import '/components/section_header/section_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'dynamic_hub_widget.dart' show DynamicHubWidget;
import 'package:flutter/material.dart';

class DynamicHubModel extends FlutterFlowModel<DynamicHubWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SectionHeader.
  late SectionHeaderModel sectionHeaderModel1;
  // Model for SectionHeader.
  late SectionHeaderModel sectionHeaderModel2;

  @override
  void initState(BuildContext context) {
    sectionHeaderModel1 = createModel(context, () => SectionHeaderModel());
    sectionHeaderModel2 = createModel(context, () => SectionHeaderModel());
  }

  @override
  void dispose() {
    sectionHeaderModel1.dispose();
    sectionHeaderModel2.dispose();
  }
}
