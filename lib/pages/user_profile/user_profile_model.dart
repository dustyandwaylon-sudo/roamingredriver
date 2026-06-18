import '/components/button/button_widget.dart';
import '/components/profile_stat/profile_stat_widget.dart';
import '/components/progress/progress_widget.dart';
import '/components/review_item2/review_item2_widget.dart';
import '/components/saved_trail_card/saved_trail_card_widget.dart';
import '/components/switch_component/switch_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'user_profile_widget.dart' show UserProfileWidget;
import 'package:flutter/material.dart';

class UserProfileModel extends FlutterFlowModel<UserProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ProfileStat.
  late ProfileStatModel profileStatModel1;
  // Model for ProfileStat.
  late ProfileStatModel profileStatModel2;
  // Model for ProfileStat.
  late ProfileStatModel profileStatModel3;
  // Model for SwitchComponent.
  late SwitchComponentModel switchComponentModel;
  // Model for Progress.
  late ProgressModel progressModel;
  // Model for SavedTrailCard.
  late SavedTrailCardModel savedTrailCardModel1;
  // Model for SavedTrailCard.
  late SavedTrailCardModel savedTrailCardModel2;
  // Model for ReviewItem67005e00.
  late ReviewItem2Model reviewItem67005e00Model1;
  // Model for ReviewItem67005e00.
  late ReviewItem2Model reviewItem67005e00Model2;
  // Model for Button.
  late ButtonModel buttonModel1;
  // Model for Button.
  late ButtonModel buttonModel2;
  // Model for Button.
  late ButtonModel buttonModel3;

  @override
  void initState(BuildContext context) {
    profileStatModel1 = createModel(context, () => ProfileStatModel());
    profileStatModel2 = createModel(context, () => ProfileStatModel());
    profileStatModel3 = createModel(context, () => ProfileStatModel());
    switchComponentModel = createModel(context, () => SwitchComponentModel());
    progressModel = createModel(context, () => ProgressModel());
    savedTrailCardModel1 = createModel(context, () => SavedTrailCardModel());
    savedTrailCardModel2 = createModel(context, () => SavedTrailCardModel());
    reviewItem67005e00Model1 = createModel(context, () => ReviewItem2Model());
    reviewItem67005e00Model2 = createModel(context, () => ReviewItem2Model());
    buttonModel1 = createModel(context, () => ButtonModel());
    buttonModel2 = createModel(context, () => ButtonModel());
    buttonModel3 = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    profileStatModel1.dispose();
    profileStatModel2.dispose();
    profileStatModel3.dispose();
    switchComponentModel.dispose();
    progressModel.dispose();
    savedTrailCardModel1.dispose();
    savedTrailCardModel2.dispose();
    reviewItem67005e00Model1.dispose();
    reviewItem67005e00Model2.dispose();
    buttonModel1.dispose();
    buttonModel2.dispose();
    buttonModel3.dispose();
  }
}
