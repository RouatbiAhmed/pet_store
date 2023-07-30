import 'package:get/get.dart';
import 'package:pet_store/app/screens/home/home.dart';
import 'package:pet_store/app/screens/login/login.dart';
import 'package:pet_store/main.dart';

class AppRoutes {
  AppRoutes._();

  static const initalRoute = "/";
  static const loginRoute = "/login";
  static const signup = "/signup";
  static const homeRoute = "/home";

  static List<GetPage> getPage = [
    GetPage(name: loginRoute, page: () => const LoginScreen()),
    GetPage(name: "/home", page: () => const HomePage())
  ];
}
