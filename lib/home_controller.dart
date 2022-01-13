import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  final personagens = {}.obs;
  final statusError = false.obs;

  @override
  void onReady() {
    super.onReady();
    getRick();
  }

  Future<void> getRick() async {
    try {
      final url = Uri.parse('https://rickandmortyapi.com/api/character');
      final response = await http.get(url);
      personagens.addAll(json.decode(response.body));
    } catch (err) {
      statusError.value = true;
    }
  }
}
