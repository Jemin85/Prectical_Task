import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'career_con.dart';

class CareerObjectiveScreen extends StatefulWidget {
  const CareerObjectiveScreen({super.key});

  @override
  State<CareerObjectiveScreen> createState() => _CareerObjectiveScreenState();
}

class _CareerObjectiveScreenState extends State<CareerObjectiveScreen> {
  CareerController careerController = Get.put(CareerController());
  GlobalKey<FormState> _form = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Career Objective"),
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
                    controller: careerController.name.value,
                    validator: (value){
                      if(value!.isEmpty){
                        return "Enter skill";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: "Enter Skill",

                        label: Text("Skill"),
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

                  ElevatedButton(onPressed: () {
                    if(_form.currentState!.validate()){
                      careerController.addDetails();

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
