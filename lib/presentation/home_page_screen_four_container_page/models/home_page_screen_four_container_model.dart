import '../../../core/app_export.dart';
import 'userprofile_item_model.dart';

/// This class defines the variables used in the [home_page_screen_four_container_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomePageScreenFourContainerModel {
  Rx<List<UserprofileItemModel>> userprofileItemList = Rx([
    UserprofileItemModel(
        northAreaText: "North Area".obs,
        reviewsText: "( 100 Reviews )".obs,
        loremIpsumText:
            "Lorem ipsum dolor sit amet consectetur. Gravida augue vitae risus orci nulla egestas sed in erat. Quam facilisis elit aliquam non quis habitasse phasellus."
                .obs),
    UserprofileItemModel(
        northAreaText: "North Area".obs,
        reviewsText: "( 100 Reviews )".obs,
        loremIpsumText:
            "Lorem ipsum dolor sit amet consectetur. Gravida augue vitae risus orci nulla egestas sed in erat. Quam facilisis elit aliquam non quis habitasse phasellus."
                .obs),
    UserprofileItemModel(
        northAreaText: "North Area".obs,
        reviewsText: "( 100 Reviews )".obs,
        loremIpsumText:
            "Lorem ipsum dolor sit amet consectetur. Gravida augue vitae risus orci nulla egestas sed in erat. Quam facilisis elit aliquam non quis habitasse phasellus."
                .obs),
    UserprofileItemModel(
        northAreaText: "North Area".obs,
        reviewsText: "( 100 Reviews )".obs,
        loremIpsumText:
            "Lorem ipsum dolor sit amet consectetur. Gravida augue vitae risus orci nulla egestas sed in erat. Quam facilisis elit aliquam non quis habitasse phasellus."
                .obs)
  ]);
}
