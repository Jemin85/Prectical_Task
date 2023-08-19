part of 'app_pages.dart';


class Routes {
  Routes._();


  static const Home = _Paths.Home;
  static const ResumeShow = _Paths.ResumeShow;
  static const AddResumeDetails = _Paths.AddResumeDetails;
  static const addInfo = _Paths.addInfo;
  static const addCareer = _Paths.addCareer;
  static const addEducation = _Paths.addEducation;
  static const addExperiance = _Paths.addExperiance;
  static const addProject = _Paths.addProject;
  static const addPersonal = _Paths.addPersonal;

}

abstract class _Paths {
  _Paths._();

  static const Home = '/Home';
  static const ResumeShow = '/ResumeShowScreen';
  static const AddResumeDetails = '/ResumeDetailsScreen';
  static const addInfo = '/addInfo';
  static const addCareer = '/addCareer';
  static const addExperiance = '/addExperiance';
  static const addProject = '/addProject';
  static const addEducation = '/addEducation';
  static const addPersonal = '/AddPersonal';




}
