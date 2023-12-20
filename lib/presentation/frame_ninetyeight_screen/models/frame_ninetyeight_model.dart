import 'package:travels_atlase/data/models/selectionPopupModel/selection_popup_model.dart';
import '../../../core/app_export.dart';
import 'userprofilelist_item_model.dart';

/// This class defines the variables used in the [frame_ninetyeight_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FrameNinetyeightModel {
  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);

  Rx<List<UserprofilelistItemModel>> userprofilelistItemList = Rx([
    UserprofilelistItemModel(
        userImage: ImageConstant.imgEllipse16.obs,
        userName: "Jenifer D.".obs,
        userLocation: "USA, California".obs,
        text: "“".obs,
        favoriteCount: "( 29 )".obs,
        userDescription:
            "Lorem ipsum dolor sit amet consectetur. Gravida augue vitae risus orci nulla egestas sed in erat. Quam facilisis elit aliquam non quis habitasse phasellus."
                .obs,
        quote: "“".obs,
        postedTime: "Posted 23 Hrs Ago ".obs),
    UserprofilelistItemModel(
        userImage: ImageConstant.imgEllipse1638x38.obs,
        userName: "James B.".obs,
        userLocation: "USA, California".obs),
    UserprofilelistItemModel(
        userImage: ImageConstant.imgEllipse161.obs,
        userName: "Anna J.".obs,
        userLocation: "USA, California".obs)
  ]);
}
