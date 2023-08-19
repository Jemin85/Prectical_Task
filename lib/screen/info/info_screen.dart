import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:untitled/screen/info/info_con.dart';
import 'package:get/get.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  InfoController infoController = Get.put(InfoController());
  GlobalKey<FormState> _form = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Info"),
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
                    controller: infoController.name.value,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "required";
                      }

                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: "Enter Name",
                        label: Text("Name"),
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
                    controller: infoController.designation.value,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "required";
                      }

                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: "Enter Designation",
                        label: Text("Designation"),
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
                    controller: infoController.email.value,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "required";
                      }

                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: "Enter Email",
                        label: Text("Email"),
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
                    controller: infoController.number.value,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "required";
                      }

                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: "Enter Mobile no",
                        label: Text("Mobile No"),
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
                  ElevatedButton(
                      onPressed: () {
                        if (_form.currentState!.validate()) {
                          infoController.addDetails();
                        }
                      },
                      child: Text("Submit"))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
