import 'package:get/get.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          child: Column(
            children: [
              TextFormField(),
              TextFormField(),
              ElevatedButton(onPressed: (){
                
              }, child: const Text("login"))
            ],
          ),
        ),
      ),
    );
  }
}

