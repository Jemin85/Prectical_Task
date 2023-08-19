import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:untitled/model/education_model.dart';
import 'package:untitled/routes/app_pages.dart';

class EducationController extends GetxController {
  Rx<TextEditingController> name = TextEditingController().obs;
  Rx<TextEditingController> designation = TextEditingController().obs;
  Rx<TextEditingController> email = TextEditingController().obs;
  Rx<TextEditingController> number = TextEditingController().obs;
  RxList data = [].obs;
  EducationModel educationModel = EducationModel();
  addDetails() {
    var object = {
      "name": name.value.text,
      "name": designation.value.text,
      "board": email.value.text,
      "year": number.value.text
    };
    data.value.add(object);
    educationModel = EducationModel.fromJson(object);
    Get.toNamed(AppPages.addPersonal);

  }
}
