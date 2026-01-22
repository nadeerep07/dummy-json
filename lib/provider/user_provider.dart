import 'dart:developer';

import 'package:dummy_json_app/data/model/user.dart';
import 'package:dummy_json_app/data/service/api_service.dart';
import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  final ApiService _apiService = ApiService();

  List<User> users = [];
  bool isLoading = false;
  String? errorMessage;
  User? selectedUser;

  Future<void> loadUsers() async {
    isLoading = true;
    try {
      users = await _apiService.fetchUsers();
      isLoading = false;
      notifyListeners();
    } catch (e) {
      log('$e');
      errorMessage = e.toString();
      isLoading = false;
      notifyListeners();
    }
  }

  void selectUser(User user){
    selectedUser = user;
    notifyListeners();
  }
}
