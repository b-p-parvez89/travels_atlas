import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.northAreaText,
    this.reviewsText,
    this.loremIpsumText,
    this.id,
  }) {
    northAreaText = northAreaText ?? Rx("North Area");
    reviewsText = reviewsText ?? Rx("( 100 Reviews )");
    loremIpsumText = loremIpsumText ??
        Rx("Lorem ipsum dolor sit amet consectetur. Gravida augue vitae risus orci nulla egestas sed in erat. Quam facilisis elit aliquam non quis habitasse phasellus.");
    id = id ?? Rx("");
  }

  Rx<String>? northAreaText;

  Rx<String>? reviewsText;

  Rx<String>? loremIpsumText;

  Rx<String>? id;
}
