import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:untitled/model/info_modal.dart';
import 'package:untitled/routes/app_pages.dart';

class InfoController extends GetxController {
  Rx<TextEditingController> name = TextEditingController().obs;
  Rx<TextEditingController> designation = TextEditingController().obs;
  Rx<TextEditingController> email = TextEditingController().obs;
  Rx<TextEditingController> number = TextEditingController().obs;
  RxList data = [].obs;
  InfoModel infoModel = InfoModel();
  addDetails() {
    var object = {
      "name": name.value.text,
      "designation": designation.value.text,
      "email": email.value.text,
      "mobile": number.value.text
    };
    data.value.add(object);
    infoModel = InfoModel.fromJson(object);
    update();
    print("--------------${infoModel.designation}");
    Get.toNamed(AppPages.addCareer);

  }
}
