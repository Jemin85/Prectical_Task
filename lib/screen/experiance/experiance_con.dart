import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:untitled/model/experiance_model.dart';

import '../../routes/app_pages.dart';

class ExpericanceController extends GetxController {
  Rx<TextEditingController> name = TextEditingController().obs;
  Rx<TextEditingController> designation = TextEditingController().obs;
  Rx<TextEditingController> email = TextEditingController().obs;
  Rx<TextEditingController> number = TextEditingController().obs;
  RxList data = [].obs;
  ExperianceModel experianceModel = ExperianceModel();
  addDetails() {
    var object = {
      "name": name.value.text,
      "role": designation.value.text,
      "s_date": email.value.text,
      "e_date": number.value.text
    };
    data.value.add(object);
    experianceModel = ExperianceModel.fromJson(object);
    Get.toNamed(AppPages.addProject);

  }
}
