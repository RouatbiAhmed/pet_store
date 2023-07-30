import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:pet_store/app/controllers/pet_controller/pet_controller.dart';

import '../../models/pet.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  RxList pets = [].obs;
  RxBool isDataPending = true.obs;
  @override
  void initState() {
    PetController.getAllPetsByStatus("pending").then((value) {
      pets.value = value;
      isDataPending.value = false;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        color: Colors.blue,
        child: isDataPending.value
            ? CircularProgressIndicator()
            : ListView.builder(
                itemCount: pets.length,
                itemBuilder: (context, index) {
                  Pet myPet = pets[index];
                  return ListTile(
                    title: Text(myPet.name!),
                    subtitle: Text(myPet.category!['name']),
                    trailing: Text(myPet.photoUrls![0]),
                  );
                },
              ),
      ),
    ));
  }
}
