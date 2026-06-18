import '/backend/backend.dart';
import '/components/category_chip/category_chip_widget.dart';
import '/components/text_field/text_field_widget.dart';
import '/components/venue_card2/venue_card2_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'venue_directory_model.dart';
export 'venue_directory_model.dart';

class VenueDirectoryWidget extends StatefulWidget {
  const VenueDirectoryWidget({super.key});

  static String routeName = 'VenueDirectory';
  static String routePath = '/venueDirectory';

  @override
  State<VenueDirectoryWidget> createState() => _VenueDirectoryWidgetState();
}

class _VenueDirectoryWidgetState extends State<VenueDirectoryWidget> {
  late VenueDirectoryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VenueDirectoryModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<List<VenuesRecord>>(
      stream: queryVenuesRecord(),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50,
                height: 50,
                child: CircularProgressIndicator(),
              ),
            ),
          );
        }
        List<VenuesRecord> venueDirectoryVenuesRecordList = snapshot.data!;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 16.0),
                    child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Roaming Red River',
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          font: GoogleFonts.roboto(
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                          lineHeight: 1.38,
                                        ),
                                  ),
                                  Text(
                                    'Explore the Gorge',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          font: GoogleFonts.cabin(
                                            fontWeight: FontWeight.w800,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineMedium
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w800,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineMedium
                                                  .fontStyle,
                                          lineHeight: 1.25,
                                        ),
                                  ),
                                ],
                              ),
                              FlutterFlowIconButton(
                                borderRadius: 16.0,
                                buttonSize: 40.0,
                                fillColor: FlutterFlowTheme.of(context)
                                    .primaryContainer,
                                icon: Icon(
                                  Icons.map_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .onPrimaryContainer,
                                  size: 24.0,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                            ],
                          ),
                          wrapWithModel(
                            model: _model.textFieldModel,
                            updateCallback: () => safeSetState(() {}),
                            child: TextFieldWidget(
                              label: '',
                              labelPresent: false,
                              helper: '',
                              helperPresent: false,
                              hint: 'Search cabins, food, trails...',
                              value: FFAppState().searchQuery,
                              onChange: '',
                              onSubmit: '',
                              leadingIcon: Icon(
                                Icons.search_rounded,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 16.0,
                              ),
                              leadingIconPresent: true,
                              trailingIconPresent: false,
                              variant: 'filled',
                              error: false,
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    FFAppState().venueCategoryFilter = 'All';
                                    FFAppState().update(() {});
                                  },
                                  child: wrapWithModel(
                                    model: _model.categoryChipModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: CategoryChipWidget(
                                      selected:
                                          FFAppState().venueCategoryFilter ==
                                              'All',
                                      icon: Icon(
                                        Icons.grid_view_rounded,
                                        size: 18.0,
                                      ),
                                      label: 'All',
                                    ),
                                  ),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    FFAppState().venueCategoryFilter =
                                        'Lodging';
                                    FFAppState().update(() {});
                                  },
                                  child: wrapWithModel(
                                    model: _model.categoryChipModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: CategoryChipWidget(
                                      selected:
                                          FFAppState().venueCategoryFilter ==
                                              'Lodging',
                                      icon: Icon(
                                        Icons.bed_rounded,
                                        size: 18.0,
                                      ),
                                      label: 'Lodging',
                                    ),
                                  ),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    FFAppState().venueCategoryFilter = 'Dining';
                                    FFAppState().update(() {});
                                  },
                                  child: wrapWithModel(
                                    model: _model.categoryChipModel3,
                                    updateCallback: () => safeSetState(() {}),
                                    child: CategoryChipWidget(
                                      selected:
                                          FFAppState().venueCategoryFilter ==
                                              'Dining',
                                      icon: Icon(
                                        Icons.restaurant_rounded,
                                        size: 18.0,
                                      ),
                                      label: 'Dining',
                                    ),
                                  ),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    FFAppState().venueCategoryFilter = 'Trails';
                                    FFAppState().update(() {});
                                  },
                                  child: wrapWithModel(
                                    model: _model.categoryChipModel4,
                                    updateCallback: () => safeSetState(() {}),
                                    child: CategoryChipWidget(
                                      selected:
                                          FFAppState().venueCategoryFilter ==
                                              'Trails',
                                      icon: Icon(
                                        Icons.terrain_rounded,
                                        size: 18.0,
                                      ),
                                      label: 'Trails',
                                    ),
                                  ),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    FFAppState().venueCategoryFilter =
                                        'Attractions';
                                    FFAppState().update(() {});
                                  },
                                  child: wrapWithModel(
                                    model: _model.categoryChipModel5,
                                    updateCallback: () => safeSetState(() {}),
                                    child: CategoryChipWidget(
                                      selected:
                                          FFAppState().venueCategoryFilter ==
                                              'Attractions',
                                      icon: Icon(
                                        Icons.local_activity_rounded,
                                        size: 18.0,
                                      ),
                                      label: 'Attractions',
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(width: 8.0)),
                            ),
                          ),
                        ].divide(SizedBox(height: 16.0)),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: SingleChildScrollView(
                      primary: false,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(24.0),
                            child: Container(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Featured Places',
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              font: GoogleFonts.cabin(
                                                fontWeight: FontWeight.bold,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleLarge
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleLarge
                                                      .fontStyle,
                                              lineHeight: 1.27,
                                            ),
                                      ),
                                      Text(
                                        '${functions.filteredVenuesList(venueDirectoryVenuesRecordList.toList(), FFAppState().searchQuery, FFAppState().venueCategoryFilter).length.toString()} results',
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                              font: GoogleFonts.roboto(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall
                                                      .fontStyle,
                                              lineHeight: 1.38,
                                            ),
                                      ),
                                    ],
                                  ),

                                  // ff_lite_listview_data:${filtered_venues_list}
                                  StreamBuilder<List<VenuesRecord>>(
                                    stream: queryVenuesRecord(),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50,
                                            height: 50,
                                            child: CircularProgressIndicator(),
                                          ),
                                        );
                                      }
                                      List<VenuesRecord>
                                          listViewVenuesRecordList =
                                          snapshot.data!;

                                      return Builder(
                                        builder: (context) {
                                          final item =
                                              listViewVenuesRecordList.toList();

                                          return ListView.builder(
                                            padding: EdgeInsets.zero,
                                            primary: false,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount: item.length,
                                            itemBuilder: (context, itemIndex) {
                                              final itemItem = item[itemIndex];
                                              return InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  // ff_lite_route_params:venue_id:item.id

                                                  context.goNamed(
                                                    VenueDetailWidget.routeName,
                                                    queryParameters: {
                                                      'venueId': serializeParam(
                                                        'item.id',
                                                        ParamType.String,
                                                      ),
                                                    }.withoutNulls,
                                                  );
                                                },
                                                child: VenueCard2Widget(
                                                  key: Key(
                                                      'Key969_${itemIndex}_of_${item.length}'),
                                                  imgDesc: itemItem.name,
                                                  rating: itemItem.rating
                                                      .toString(),
                                                  name: itemItem.name,
                                                  price: itemItem.priceTier,
                                                  distance: 'Red River Gorge',
                                                  category: itemItem.category,
                                                  isOpen: itemItem.isOpen,
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      );
                                    },
                                  ),
                                  Container(
                                    height: 32.0,
                                  ),
                                ].divide(SizedBox(height: 16.0)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
