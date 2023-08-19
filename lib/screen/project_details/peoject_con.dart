import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:untitled/model/project_model.dart';

import '../../routes/app_pages.dart';

class ProjectController extends GetxController {
  Rx<TextEditingController> name = TextEditingController().obs;
  Rx<TextEditingController> designation = TextEditingController().obs;
  Rx<TextEditingController> email = TextEditingController().obs;
  Rx<TextEditingController> number = TextEditingController().obs;
  RxList data = [].obs;
  ProjectModel projectModel = ProjectModel();
  addDetails() {
    var object = {
      "name": name.value.text,
      "role": designation.value.text,
      "team": email.value.text,
      "duration": number.value.text
    };
    data.value.add(object);
    projectModel = ProjectModel.fromJson(object);
    Get.toNamed(AppPages.addEducation);

  }


}
