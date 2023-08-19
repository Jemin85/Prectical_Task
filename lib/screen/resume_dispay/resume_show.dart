import 'package:flutter/material.dart';
import 'package:untitled/model/project_model.dart';
import 'package:untitled/screen/career_objective/career_con.dart';
import 'package:untitled/screen/experiance/experiance_con.dart';
import 'package:untitled/screen/info/info_con.dart';
import 'package:get/get.dart';
import 'package:untitled/screen/personal_details/personal_con.dart';
import 'package:untitled/screen/project_details/peoject_con.dart';

import '../education_details/education_con.dart';

class ResumeShowScreen extends StatefulWidget {
  const ResumeShowScreen({super.key});

  @override
  State<ResumeShowScreen> createState() => _ResumeShowScreenState();
}

class _ResumeShowScreenState extends State<ResumeShowScreen> {
  InfoController infoController = Get.put(InfoController());
  EducationController educationController = Get.put(EducationController());
  PersonalController personalController = Get.put(PersonalController());
  ExpericanceController expericanceController = Get.put(ExpericanceController
    ());
  ProjectController projectController = Get.put(ProjectController());
  CareerController careerController = Get.put(CareerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(15),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // if(infoController.infoModel != null)
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        "${infoController.infoModel.designation}",
                        style: const TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: const BoxDecoration(
                            border:
                            Border(left: BorderSide(color: Colors.black))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                            Text(
                              "${infoController.infoModel.name}",
                              style:const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "${infoController.infoModel.email}",
                              style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "${infoController.infoModel.mobile}",
                              style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
            const  SizedBox(height: 10),
              const Text(
                "Career Objective",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            const  Divider(color: Colors.black),
             if(careerController.careerModel != null)
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: List.generate(
                   1,
                       (index) => Text(
                     "${careerController.careerModel.skill}",
                     style: const TextStyle(
                         fontSize: 14,
                         color: Colors.black,
                         fontWeight: FontWeight.bold),
                   ),
                 ),
               ),

              SizedBox(height: 10),
              const Text(
                "Experience",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Divider(color: Colors.black),
              Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: List.generate(
                     1,
                         (index) => ListTile(
                       leading: Text(
                         "${index + 1}",
                         style: const TextStyle(
                             fontSize: 12,
                             color: Colors.black,
                             fontWeight: FontWeight.bold),
                       ),
                       title: Text(
                         "${expericanceController.experianceModel.name}",
                         style: const TextStyle(
                             fontSize: 14,
                             color: Colors.black,
                             fontWeight: FontWeight.bold),
                       ),
                       subtitle: Text(
                         "${expericanceController.experianceModel.designation}",
                         style: const TextStyle(
                             fontSize: 14,
                             color: Colors.black,
                             fontWeight: FontWeight.bold),
                       ),
                       trailing: Text(
                         "${expericanceController.experianceModel.mobile}",
                         style: const TextStyle(
                             fontSize: 14,
                             color: Colors.black,
                             fontWeight: FontWeight.bold),
                       ),
                     )),
               ),

             const SizedBox(height: 10),
              const Text(
                "Project Details",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            const  Divider(color: Colors.black),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                    1,
                    (index) => ListTile(
                          leading: Text(
                            "${index + 1}",
                            style: const TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          title: Text(
                            "${projectController.projectModel.name}",
                            style: const TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            "${projectController.projectModel.role}",
                            style: const TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          trailing: Text(
                            "${projectController.projectModel.duration}",
                            style: const TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
              ),
              SizedBox(height: 10),
              const Text(
                "Education",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Divider(color: Colors.black),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                    1,
                    (index) => ListTile(
                          leading: Text(
                            "${index + 1}",
                            style: const TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          title:  Text(
                            "${educationController.educationModel.name}",
                            style: const TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle:  Text(
                            "${educationController.educationModel.role}",
                            style: const  TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          trailing:  Text(
                            "${educationController.educationModel.duration}",
                            style: const  TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
              ),
              const SizedBox(height: 10),
              const Text(
                "Personal Details",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
             const Divider(color: Colors.black),

              Row(
                children:  [
                 const Expanded(
                    flex: 1,
                    child: Text("Address",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        )),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text("${personalController.personalModel.address}",
                        style:const TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                        )),
                  )
                ],

              ),
              Row(
                children:  [
                const  Expanded(
                    flex: 1,
                    child: Text("DOB",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        )),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text("${personalController.personalModel.dob}",
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                        )),
                  )
                ],

              ),
              Row(
                children:  [
                 const Expanded(
                    flex: 1,
                    child: Text("Gender",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        )),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text("${personalController.personalModel.gender}",
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                        )),
                  )
                ],

              ),
             ],
          )
    ),
        ),
      ),
    );
  }
}
