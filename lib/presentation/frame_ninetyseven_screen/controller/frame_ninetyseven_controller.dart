import 'package:travels_atlase/core/app_export.dart';
import 'package:travels_atlase/presentation/frame_ninetyseven_screen/models/frame_ninetyseven_model.dart';

/// A controller class for the FrameNinetysevenScreen.
///
/// This class manages the state of the FrameNinetysevenScreen, including the
/// current frameNinetysevenModelObj
class FrameNinetysevenController extends GetxController {
  Rx<FrameNinetysevenModel> frameNinetysevenModelObj =
      FrameNinetysevenModel().obs;
}
