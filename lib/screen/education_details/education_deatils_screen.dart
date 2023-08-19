import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/screen/education_details/education_con.dart';

class EducationScreen extends StatefulWidget {
  const EducationScreen({super.key});

  @override
  State<EducationScreen> createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen> {
  EducationController educationController = Get.put(EducationController());
  GlobalKey<FormState> _form = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Education"),
      ),
      body: Obx(
            () {
          return SingleChildScrollView(
            padding: EdgeInsets.all(15),
            child: Form(
              key: _form,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                    controller: educationController.name.value,validator: (value){
                    if(value!.isEmpty){
                      return "required";
                    }

                    return null;
                  },
                    decoration: InputDecoration(
                        hintText: "Enter Degree Name",
                        label: Text("Degree Name"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    controller: educationController.designation.value,validator: (value){
                    if(value!.isEmpty){
                      return "required";
                    }

                    return null;
                  },
                    decoration: InputDecoration(
                        hintText: "Enter Institute Name",
                        label: Text("Institute"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    controller: educationController.email.value,validator: (value){
                    if(value!.isEmpty){
                      return "required";
                    }

                    return null;
                  },
                    decoration: InputDecoration(
                        hintText: "Enter Board",
                        label: Text("Board/University"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    controller: educationController.number.value,
                    validator: (value){
                      if(value!.isEmpty){
                        return "required";
                      }

                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: "Enter Passing Year",
                        label: Text("Passing Year"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(height: 15),
                  ElevatedButton(onPressed: (){
                    if(_form.currentState!.validate()) {
                      educationController.addDetails();
                    }
                    }, child: Text("Submit"))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
