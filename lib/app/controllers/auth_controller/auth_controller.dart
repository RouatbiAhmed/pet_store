import 'package:get/state_manager.dart';
import 'package:http/http.dart' as http;

class AuthController extends GetxController {
  static RxString username = ''.obs;
  static RxString password = ''.obs;
  static void onUsernameChanged(String value) => username.value = value;
  static void onPasswordChanged(String value) => password.value = value;

  static Future<void> login(String username, String password) async {
    try {
      final response = await http.Client().get(
        Uri.parse(
            "https://petstore.swagger.io/v2/user/login?username=$username&password=$password"),
      );
    } catch (exp) {
      print("User not Found");
    }
  }

  static Future<void> signUp(
      String username, password, firstName, lastName, email) async {
    try {
      final response = await http.Client()
          .post(Uri.parse("https://petstore.swagger.io/v2/user"), body: {
        "username": username,
        "firstName": firstName,
        "lastName": lastName,
        "email": email,
        "password": password
      });
    } catch (exp) {
      print("User not Found");
    }
  }
}
