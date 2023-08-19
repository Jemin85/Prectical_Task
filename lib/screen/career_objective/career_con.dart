import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:untitled/model/career_model.dart';

import '../../routes/app_pages.dart';

class CareerController extends GetxController {
  Rx<TextEditingController> name = TextEditingController().obs;
  RxList data = [].obs;
  CareerModel careerModel = CareerModel();
  addDetails() {
    var object = {
      "skill": name.value.text,
    };
    data.value.add(object);
    careerModel = CareerModel.fromJson(object);
    Get.toNamed(AppPages.addExperiance);
  }
}
