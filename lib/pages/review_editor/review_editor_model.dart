import '/components/button/button_widget.dart';
import '/components/offline_status/offline_status_widget.dart';
import '/components/text_field/text_field_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'review_editor_widget.dart' show ReviewEditorWidget;
import 'package:flutter/material.dart';

class ReviewEditorModel extends FlutterFlowModel<ReviewEditorWidget> {
  ///  Local state fields for this page.

  double? rating = 5.0;

  String? comment;

  List<dynamic> photos = [];
  void addToPhotos(dynamic item) => photos.add(item);
  void removeFromPhotos(dynamic item) => photos.remove(item);
  void removeAtIndexFromPhotos(int index) => photos.removeAt(index);
  void insertAtIndexInPhotos(int index, dynamic item) =>
      photos.insert(index, item);
  void updatePhotosAtIndex(int index, Function(dynamic) updateFn) =>
      photos[index] = updateFn(photos[index]);

  String? error;

  ///  State fields for stateful widgets in this page.

  // Model for OfflineStatus.
  late OfflineStatusModel offlineStatusModel;
  // Model for TextField.
  late TextFieldModel textFieldModel;
  // Model for Button.
  late ButtonModel buttonModel1;
  // Model for Button.
  late ButtonModel buttonModel2;

  @override
  void initState(BuildContext context) {
    offlineStatusModel = createModel(context, () => OfflineStatusModel());
    textFieldModel = createModel(context, () => TextFieldModel());
    buttonModel1 = createModel(context, () => ButtonModel());
    buttonModel2 = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    offlineStatusModel.dispose();
    textFieldModel.dispose();
    buttonModel1.dispose();
    buttonModel2.dispose();
  }
}
