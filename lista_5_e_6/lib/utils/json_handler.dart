/*
   Dart queria substituir o javascript
   Dart não conseguiu
   Dart ficou bravo
   Dart se recusa a usar JSON
   Dart me faz escrever codigo para lidar com JSON
 */

import 'dart:convert';

class JsonHandler {
  static String? toJson(dynamic object) {
    try {
      return jsonEncode(object);
    } catch (e) {
      print('Erro ao converter para JSON: $e');
      return null;
    }
  }

  static dynamic fromJson(String json) {
    try {
      return jsonDecode(json);
    } catch (e) {
      print('Erro ao converter para objeto: $e');
      return null;
    }
  }
}
