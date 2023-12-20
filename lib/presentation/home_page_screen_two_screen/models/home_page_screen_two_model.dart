import '../../../core/app_export.dart';
import 'ninetysevensection_item_model.dart';
import 'viewhierarchy_item_model.dart';

/// This class defines the variables used in the [home_page_screen_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomePageScreenTwoModel {
  Rx<List<NinetysevensectionItemModel>> ninetysevensectionItemList = Rx([
    NinetysevensectionItemModel(
        flightsImage: ImageConstant.imgAirplaneWhiteA700.obs,
        flightsText: "Flights".obs),
    NinetysevensectionItemModel(
        flightsImage: ImageConstant.imgGroupPrimary.obs,
        flightsText: "Restaurant".obs),
    NinetysevensectionItemModel(
        flightsImage: ImageConstant.imgGroupSecondarycontainer.obs,
        flightsText: "Hotels".obs),
    NinetysevensectionItemModel(
        flightsImage: ImageConstant.imgGroupSecondarycontainer23x15.obs,
        flightsText: "Our Deals".obs),
    NinetysevensectionItemModel(
        flightsImage: ImageConstant.imgGroupPrimary.obs,
        flightsText: "Restaurant".obs)
  ]);

  Rx<List<ViewhierarchyItemModel>> viewhierarchyItemList = Rx([
    ViewhierarchyItemModel(
        mountainImage: ImageConstant.imgImage14107x137.obs,
        favoriteImage: ImageConstant.imgFavoriteRedA70001.obs),
    ViewhierarchyItemModel(
        mountainImage: ImageConstant.imgImage14.obs,
        favoriteImage: ImageConstant.imgFavorite.obs),
    ViewhierarchyItemModel(
        mountainImage: ImageConstant.imgImage14.obs,
        favoriteImage: ImageConstant.imgFavorite.obs)
  ]);
}
