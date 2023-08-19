
import 'package:get/get.dart';
import 'package:untitled/screen/resume_dispay/resume_show.dart';

import '../screen/home/home_screen.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();


  static const Home = Routes.Home;
  static const ResumeShow = Routes.ResumeShow;


  static final routes = [

    GetPage(name: _Paths.Home, page: () => const HomeScreen()),
    GetPage(name: _Paths.ResumeShow, page: () => const ResumeShowScreen()),

  ];
}
