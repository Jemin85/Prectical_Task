import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/screen/experiance/experiance_con.dart';

class ExperinaceScreen extends StatefulWidget {
  const ExperinaceScreen({super.key});

  @override
  State<ExperinaceScreen> createState() => _ExperinaceScreenState();
}

class _ExperinaceScreenState extends State<ExperinaceScreen> {
  ExpericanceController expericanceController = Get.put(ExpericanceController());
  GlobalKey<FormState> _form = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Experiance"),
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
                    controller: expericanceController.name.value,validator: (value){
                    if(value!.isEmpty){
                      return "required";
                    }

                    return null;
                  },
                    decoration: InputDecoration(
                        hintText: "Enter Company Name",
                        label: Text("Company Name"),
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
                    controller: expericanceController.designation.value,validator: (value){
                    if(value!.isEmpty){
                      return "required";
                    }

                    return null;
                  },
                    decoration: InputDecoration(
                        hintText: "Enter Role",
                        label: Text("Role"),
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
                    controller: expericanceController.email.value,validator: (value){
                    if(value!.isEmpty){
                      return "required";
                    }

                    return null;
                  },
                    decoration: InputDecoration(
                        hintText: "Enter Start date",
                        label: Text("Start Date"),
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
                    controller: expericanceController.number.value,validator: (value){
                    if(value!.isEmpty){
                      return "required";
                    }

                    return null;
                  },
                    decoration: InputDecoration(
                        hintText: "Enter End Date",
                        label: Text("End Date"),
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
                      expericanceController.addDetails();
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
