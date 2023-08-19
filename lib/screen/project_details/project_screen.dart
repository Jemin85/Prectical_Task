import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/screen/project_details/peoject_con.dart';

class ProjectDetailScreen extends StatefulWidget {
  const ProjectDetailScreen({super.key});

  @override
  State<ProjectDetailScreen> createState() => _ProjectDetailScreenState();
}

class _ProjectDetailScreenState extends State<ProjectDetailScreen> {
  ProjectController projectController = Get.put(ProjectController());
  GlobalKey<FormState> _form = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Project Details"),
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
                    controller: projectController.name.value,
                    validator: (value){
                      if(value!.isEmpty){
                        return "required";
                      }

                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: "Enter Project Name",
                        label: Text("Project Name"),
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
                    controller: projectController.designation.value,validator: (value){
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
                    controller: projectController.email.value,validator: (value){
                    if(value!.isEmpty){
                      return "required";
                    }

                    return null;
                  },
                    decoration: InputDecoration(
                        hintText: "Enter Team Size",
                        label: Text("Team Size"),
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
                    controller: projectController.number.value,validator: (value){
                    if(value!.isEmpty){
                      return "required";
                    }

                    return null;
                  },
                    decoration: InputDecoration(
                        hintText: "Enter Duration",
                        label: Text("Enter Duration"),
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
                    if(_form.currentState!.validate()){
                    projectController.addDetails();}
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
