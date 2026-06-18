import '/components/button/button_widget.dart';
import '/components/info_tile/info_tile_widget.dart';
import '/components/tab_group/tab_group_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'venue_detail_widget.dart' show VenueDetailWidget;
import 'package:flutter/material.dart';

class VenueDetailModel extends FlutterFlowModel<VenueDetailWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TabGroup.
  late TabGroupModel tabGroupModel;
  // Model for InfoTile.
  late InfoTileModel infoTileModel1;
  // Model for InfoTile.
  late InfoTileModel infoTileModel2;
  // Model for InfoTile.
  late InfoTileModel infoTileModel3;
  // Model for InfoTile.
  late InfoTileModel infoTileModel4;
  // State field(s) for Map Google Map widget.
  LatLng? mapGoogleMapsCenter;
  final mapGoogleMapsController = Completer<GoogleMapController>();
  // Model for Button.
  late ButtonModel buttonModel1;
  // Model for Button.
  late ButtonModel buttonModel2;

  @override
  void initState(BuildContext context) {
    tabGroupModel = createModel(context, () => TabGroupModel());
    infoTileModel1 = createModel(context, () => InfoTileModel());
    infoTileModel2 = createModel(context, () => InfoTileModel());
    infoTileModel3 = createModel(context, () => InfoTileModel());
    infoTileModel4 = createModel(context, () => InfoTileModel());
    buttonModel1 = createModel(context, () => ButtonModel());
    buttonModel2 = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    tabGroupModel.dispose();
    infoTileModel1.dispose();
    infoTileModel2.dispose();
    infoTileModel3.dispose();
    infoTileModel4.dispose();
    buttonModel1.dispose();
    buttonModel2.dispose();
  }
}
