import 'package:get/get.dart';
import 'package:pet_store/main.dart';

class AppRoutes {
  AppRoutes._();
  static const initalRoute = "/";
  static const loginRoute = "/login";
  static const signup = "/signup";


  static List<GetPage> getPage = [
    GetPage(name: "/", page: ()=>const MyApp()),
  ];
}
