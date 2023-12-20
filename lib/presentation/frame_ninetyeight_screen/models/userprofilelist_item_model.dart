import '../../../core/app_export.dart';

/// This class is used in the [userprofilelist_item_widget] screen.
class UserprofilelistItemModel {
  UserprofilelistItemModel({
    this.userImage,
    this.userName,
    this.userLocation,
    this.text,
    this.favoriteCount,
    this.userDescription,
    this.quote,
    this.postedTime,
    this.id,
  }) {
    userImage = userImage ?? Rx(ImageConstant.imgEllipse16);
    userName = userName ?? Rx("Jenifer D.");
    userLocation = userLocation ?? Rx("USA, California");
    text = text ?? Rx("“");
    favoriteCount = favoriteCount ?? Rx("( 29 )");
    userDescription = userDescription ??
        Rx("Lorem ipsum dolor sit amet consectetur. Gravida augue vitae risus orci nulla egestas sed in erat. Quam facilisis elit aliquam non quis habitasse phasellus.");
    quote = quote ?? Rx("“");
    postedTime = postedTime ?? Rx("Posted 23 Hrs Ago ");
    id = id ?? Rx("");
  }

  Rx<String>? userImage;

  Rx<String>? userName;

  Rx<String>? userLocation;

  Rx<String>? text;

  Rx<String>? favoriteCount;

  Rx<String>? userDescription;

  Rx<String>? quote;

  Rx<String>? postedTime;

  Rx<String>? id;
}
