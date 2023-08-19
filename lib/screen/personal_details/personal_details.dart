import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/screen/personal_details/personal_con.dart';

class PersonalDetailScreen extends StatefulWidget {
  const PersonalDetailScreen({super.key});

  @override
  State<PersonalDetailScreen> createState() => _PersonalDetailScreenState();
}

class _PersonalDetailScreenState extends State<PersonalDetailScreen> {
  PersonalController personalController = Get.put(PersonalController());
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Personal Details"),
      ),
      body: Obx(
            () {
          return SingleChildScrollView(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  controller: personalController.name.value,
                  decoration: InputDecoration(
                      hintText: "Enter Address",
                      label: Text("Address"),
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
                  controller: personalController.designation.value,
                  decoration: InputDecoration(
                      hintText: "Enter date of birth",
                      label: Text("DOB"),
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
                  controller: personalController.email.value,
                  decoration: InputDecoration(
                      hintText: "Enter Gender",
                      label: Text("Gender"),
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
                  personalController.addDetails();
                }, child: Text("Submit"))
              ],
            ),
          );
        },
      ),
    );
  }
}
