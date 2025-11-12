
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:post_intregration/Authentication/splashScree.dart';

class AppRoute{
  static const String splashscreen = "/splashscreen";



  static List<GetPage> route = [
    GetPage(name: splashscreen, page: () => Splashscree()),

  ];
}