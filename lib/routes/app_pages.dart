
import 'package:get/get.dart';
import 'package:untitled/screen/career_objective/career_objective.dart';
import 'package:untitled/screen/education_details/education_deatils_screen.dart';
import 'package:untitled/screen/experiance/experiance_screen.dart';
import 'package:untitled/screen/info/info_screen.dart';
import 'package:untitled/screen/personal_details/personal_details.dart';
import 'package:untitled/screen/project_details/project_screen.dart';
import 'package:untitled/screen/resume_details/add_resume_details.dart';
import 'package:untitled/screen/resume_dispay/resume_show.dart';

import '../screen/home/home_screen.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();


  static const Home = Routes.Home;
  static const ResumeShow = Routes.ResumeShow;
  static const AddResumeDetails = Routes.AddResumeDetails;
  static const addPersonal = Routes.addPersonal;
  static const addProject = Routes.addProject;
  static const addExperiance = Routes.addExperiance;
  static const addEducation = Routes.addEducation;
  static const addCareer = Routes.addCareer;
  static const addInfo = Routes.addInfo;


  static final routes = [

    GetPage(name: _Paths.Home, page: () => const HomeScreen()),
    GetPage(name: _Paths.ResumeShow, page: () => const ResumeShowScreen()),
    GetPage(name: _Paths.AddResumeDetails, page: () => const AddResumeDetailsScreen()),
    GetPage(name: _Paths.addInfo, page: () => const InfoScreen()),
    GetPage(name: _Paths.addCareer, page: () => const CareerObjectiveScreen()),
    GetPage(name: _Paths.addEducation, page: () => const EducationScreen()),
    GetPage(name: _Paths.addExperiance, page: () => const ExperinaceScreen()),
    GetPage(name: _Paths.addProject, page: () => const ProjectDetailScreen()),
    GetPage(name: _Paths.addPersonal, page: () => const PersonalDetailScreen()),

  ];
}
