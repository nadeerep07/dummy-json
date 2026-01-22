import 'dart:convert';
// import 'dart:developer';
import 'package:dummy_json_app/data/model/user.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = 'https://dummyjson.com';

  Future<List<User>> fetchUsers() async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/users'));
      //  log(response.body);
      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonData = json.decode(response.body);
        final List<dynamic> usersData = jsonData['users'];
        // log('$usersData');
        return usersData.map((e) => User.fromJson(e)).toList();
      } else {
        throw Exception('Failed to load users');
      }
    } catch (e) {
      throw Exception('Error Fetching users;$e');
    }
  }

  // Future<User> fetchUserbyId(int id) async {
  //   try {
  //     final response = await http.get(Uri.parse('$baseUrl/users/$id'));
  //     //  log(response.body);
  //     if (response.statusCode == 200) {
  //       return User.fromJson(json.decode(response.body));
  //     } else {
  //       throw Exception('Failed to load user');
  //     }
  //   } catch (e) {
  //     throw Exception('Error fetching User:$e');
  //   }
  // }
}
