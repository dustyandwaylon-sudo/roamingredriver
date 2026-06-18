import '/components/accordion_item/accordion_item_widget.dart';
import '/components/button/button_widget.dart';
import '/components/stat_card/stat_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'admin_dashboard_widget.dart' show AdminDashboardWidget;
import 'package:flutter/material.dart';

class AdminDashboardModel extends FlutterFlowModel<AdminDashboardWidget> {
  ///  Local state fields for this page.

  double? syncProgress = 0.75;

  int? pendingCount = 4;

  ///  State fields for stateful widgets in this page.

  // Model for StatCard.
  late StatCardModel statCardModel1;
  // Model for StatCard.
  late StatCardModel statCardModel2;
  // Model for StatCard.
  late StatCardModel statCardModel3;
  // Model for Button.
  late ButtonModel buttonModel1;
  // Model for Button.
  late ButtonModel buttonModel2;
  // Model for Button.
  late ButtonModel buttonModel3;
  // Model for AccordionItem.
  late AccordionItemModel accordionItemModel1;
  // Model for AccordionItem.
  late AccordionItemModel accordionItemModel2;
  // Model for AccordionItem.
  late AccordionItemModel accordionItemModel3;

  @override
  void initState(BuildContext context) {
    statCardModel1 = createModel(context, () => StatCardModel());
    statCardModel2 = createModel(context, () => StatCardModel());
    statCardModel3 = createModel(context, () => StatCardModel());
    buttonModel1 = createModel(context, () => ButtonModel());
    buttonModel2 = createModel(context, () => ButtonModel());
    buttonModel3 = createModel(context, () => ButtonModel());
    accordionItemModel1 = createModel(context, () => AccordionItemModel());
    accordionItemModel2 = createModel(context, () => AccordionItemModel());
    accordionItemModel3 = createModel(context, () => AccordionItemModel());
  }

  @override
  void dispose() {
    statCardModel1.dispose();
    statCardModel2.dispose();
    statCardModel3.dispose();
    buttonModel1.dispose();
    buttonModel2.dispose();
    buttonModel3.dispose();
    accordionItemModel1.dispose();
    accordionItemModel2.dispose();
    accordionItemModel3.dispose();
  }
}
