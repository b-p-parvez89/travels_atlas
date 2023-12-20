import '../../../core/app_export.dart';
import 'playlist_item_model.dart';

/// This class defines the variables used in the [frame_ninetyseven_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FrameNinetysevenModel {
  Rx<List<PlaylistItemModel>> playlistItemList = Rx([
    PlaylistItemModel(
        imageFifteen: ImageConstant.imgImage15.obs,
        arrowDown: ImageConstant.imgArrowDownPrimary.obs,
        user: ImageConstant.imgUser.obs)
  ]);
}
