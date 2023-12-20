import '../../../core/app_export.dart';

/// This class is used in the [playlist_item_widget] screen.
class PlaylistItemModel {
  PlaylistItemModel({
    this.imageFifteen,
    this.arrowDown,
    this.user,
    this.id,
  }) {
    imageFifteen = imageFifteen ?? Rx(ImageConstant.imgImage15);
    arrowDown = arrowDown ?? Rx(ImageConstant.imgArrowDownPrimary);
    user = user ?? Rx(ImageConstant.imgUser);
    id = id ?? Rx("");
  }

  Rx<String>? imageFifteen;

  Rx<String>? arrowDown;

  Rx<String>? user;

  Rx<String>? id;
}
