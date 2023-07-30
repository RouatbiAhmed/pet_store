import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/state_manager.dart';
import 'package:http/http.dart' as http;
import '../../models/pet.dart';

class PetController extends GetxController {
  static List<Pet> parsePets(String responseBody) {
    final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<Pet>((json) => Pet.fromJson(json)).toList();
  }

  static Future<List<Pet>> getAllPetsByStatus(String status) async {
    try {
      var response = await http.Client().get(
        Uri.parse(
            "https://petstore.swagger.io/v2/pet/findByStatus?status=$status"),
      );
      print(response.body);
      return compute(parsePets, response.body);
    } catch (exp) {
      print("User not Found");
      throw Exception("Error in Request");
    }
  }
}
