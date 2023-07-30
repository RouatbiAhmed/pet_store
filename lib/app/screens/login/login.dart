import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:pet_store/app/controllers/auth_controller/auth_controller.dart';
import 'package:pet_store/app/routers.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                validator: (value) {
                  if (value!.length < 6) {
                    return "Username is too short";
                  }
                },
                onSaved: (value) {
                  AuthController.onUsernameChanged(value!);
                },
              ),
              TextFormField(
                onSaved: (value) {
                  AuthController.onPasswordChanged(value!);
                },
              ),
              ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      AuthController.login(AuthController.username.value,
                              AuthController.password.value)
                          .then((value) => Get.toNamed(AppRoutes.homeRoute));
                    }
                  },
                  child: const Text("login")),
                  
            ],
          ),
        ),
      ),
    );
  }
}
