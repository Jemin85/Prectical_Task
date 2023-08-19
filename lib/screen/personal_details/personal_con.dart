import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:untitled/model/personal_model.dart';

import '../../routes/app_pages.dart';

class PersonalController extends GetxController {
  Rx<TextEditingController> name = TextEditingController().obs;
  Rx<TextEditingController> designation = TextEditingController().obs;
  Rx<TextEditingController> email = TextEditingController().obs;
  RxList data = [].obs;
  PersonalModel personalModel = PersonalModel();
  addDetails() {
    var object = {
      "address": name.value.text,
      "dob": designation.value.text,
      "gender": email.value.text,
    };
    data.value.add(object);
    personalModel = PersonalModel.fromJson(object);
    Get.toNamed(AppPages.ResumeShow);

  }
}
