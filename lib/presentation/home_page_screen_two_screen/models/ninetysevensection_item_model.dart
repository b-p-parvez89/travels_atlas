import '../../../core/app_export.dart';

/// This class is used in the [ninetysevensection_item_widget] screen.
class NinetysevensectionItemModel {
  NinetysevensectionItemModel({
    this.flightsImage,
    this.flightsText,
    this.id,
  }) {
    flightsImage = flightsImage ?? Rx(ImageConstant.imgAirplaneWhiteA700);
    flightsText = flightsText ?? Rx("Flights");
    id = id ?? Rx("");
  }

  Rx<String>? flightsImage;

  Rx<String>? flightsText;

  Rx<String>? id;
}
