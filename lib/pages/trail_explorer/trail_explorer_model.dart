import '/components/filter_chip/filter_chip_widget.dart';
import '/components/text_field/text_field_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'trail_explorer_widget.dart' show TrailExplorerWidget;
import 'package:flutter/material.dart';

class TrailExplorerModel extends FlutterFlowModel<TrailExplorerWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TextField.
  late TextFieldModel textFieldModel;
  // Model for FilterChip.
  late FilterChipModel filterChipModel1;
  // Model for FilterChip.
  late FilterChipModel filterChipModel2;
  // Model for FilterChip.
  late FilterChipModel filterChipModel3;
  // Model for FilterChip.
  late FilterChipModel filterChipModel4;

  @override
  void initState(BuildContext context) {
    textFieldModel = createModel(context, () => TextFieldModel());
    filterChipModel1 = createModel(context, () => FilterChipModel());
    filterChipModel2 = createModel(context, () => FilterChipModel());
    filterChipModel3 = createModel(context, () => FilterChipModel());
    filterChipModel4 = createModel(context, () => FilterChipModel());
  }

  @override
  void dispose() {
    textFieldModel.dispose();
    filterChipModel1.dispose();
    filterChipModel2.dispose();
    filterChipModel3.dispose();
    filterChipModel4.dispose();
  }
}
