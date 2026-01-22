import 'package:dummy_json_app/provider/user_provider.dart';
import 'package:dummy_json_app/ui/screens/user_details_screen.dart';
import 'package:dummy_json_app/ui/screens/user_listing_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => UserProvider()..loadUsers(),
      child: MaterialApp(
        title: 'flutter app',
        theme: ThemeData(primarySwatch: Colors.blue),
        initialRoute: '/',
        routes: {
          '/': (context) => const UserListingScreen(),
          '/details': (context) => const UserDetailsScreen(),
        },
      ),
    );
  }
}
