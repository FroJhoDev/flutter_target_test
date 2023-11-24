import 'dart:convert';

import '../models/user_model.dart';
import 'package:http/http.dart' as http;

class AuthRepository {
  
  Future<UserModel> signInUser({required String username, required String password}) async {

    try {

      final response = await http.post(
        Uri.parse('https://dummyjson.com/auth/login'),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'username': username,
          'password': password,
        }),
      );

      if (response.statusCode == 200) {
        return userModelFromJson(response.body);        
      } else {
        return Future.error('Erro ao realizar login');
      }

      
    } catch (error) {
      rethrow;
    }
    
  }

}