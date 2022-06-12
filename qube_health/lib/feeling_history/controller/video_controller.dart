import 'package:get/get.dart';

class VideoController extends GetxController {
  var videoUrl = "".obs;

  void updateUrl(url) {
    videoUrl.value = url;
    update();
  }
}
