import '/components/accordion/accordion_widget.dart';
import '/components/alert_banner/alert_banner_widget.dart';
import '/components/button/button_widget.dart';
import '/components/spec_tile/spec_tile_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'trail_detail_widget.dart' show TrailDetailWidget;
import 'package:flutter/material.dart';

class TrailDetailModel extends FlutterFlowModel<TrailDetailWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AlertBanner.
  late AlertBannerModel alertBannerModel;
  // Model for SpecTile.
  late SpecTileModel specTileModel1;
  // Model for SpecTile.
  late SpecTileModel specTileModel2;
  // Model for SpecTile.
  late SpecTileModel specTileModel3;
  // Model for SpecTile.
  late SpecTileModel specTileModel4;
  // State field(s) for Map Google Map widget.
  LatLng? mapGoogleMapsCenter;
  final mapGoogleMapsController = Completer<GoogleMapController>();
  // Model for Accordion.
  late AccordionModel accordionModel;
  // Model for Button.
  late ButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    alertBannerModel = createModel(context, () => AlertBannerModel());
    specTileModel1 = createModel(context, () => SpecTileModel());
    specTileModel2 = createModel(context, () => SpecTileModel());
    specTileModel3 = createModel(context, () => SpecTileModel());
    specTileModel4 = createModel(context, () => SpecTileModel());
    accordionModel = createModel(context, () => AccordionModel());
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    alertBannerModel.dispose();
    specTileModel1.dispose();
    specTileModel2.dispose();
    specTileModel3.dispose();
    specTileModel4.dispose();
    accordionModel.dispose();
    buttonModel.dispose();
  }
}
