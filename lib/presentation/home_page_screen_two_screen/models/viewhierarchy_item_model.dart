import '../../../core/app_export.dart';

/// This class is used in the [viewhierarchy_item_widget] screen.
class ViewhierarchyItemModel {
  ViewhierarchyItemModel({
    this.mountainImage,
    this.favoriteImage,
    this.id,
  }) {
    mountainImage = mountainImage ?? Rx(ImageConstant.imgImage14107x137);
    favoriteImage = favoriteImage ?? Rx(ImageConstant.imgFavoriteRedA70001);
    id = id ?? Rx("");
  }

  Rx<String>? mountainImage;

  Rx<String>? favoriteImage;

  Rx<String>? id;
}
