import 'package:travels_atlase/core/app_export.dart';
import 'package:travels_atlase/presentation/frame_ninetyeight_screen/models/frame_ninetyeight_model.dart';

/// A controller class for the FrameNinetyeightScreen.
///
/// This class manages the state of the FrameNinetyeightScreen, including the
/// current frameNinetyeightModelObj
class FrameNinetyeightController extends GetxController {
  Rx<FrameNinetyeightModel> frameNinetyeightModelObj =
      FrameNinetyeightModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  onSelected(dynamic value) {
    for (var element in frameNinetyeightModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    frameNinetyeightModelObj.value.dropdownItemList.refresh();
  }
}
