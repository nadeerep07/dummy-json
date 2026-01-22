import 'package:dummy_json_app/provider/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserDetailsScreen extends StatelessWidget {
  const UserDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.watch<UserProvider>().selectedUser;
    if (user == null) {
      return Scaffold(
        appBar: AppBar(title: Text('User Details')),
        body: const Center(child: Text('No User Found')),
      );
    }
    return Scaffold(
      appBar: AppBar(title: Text(user.firstName)),
      body: SizedBox(
      width: double.infinity,
        //padding: EdgeInsets.all(15),
        child: Column(
          // mainAxisAlignment: .start,
          crossAxisAlignment: .center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(user.image),
              child: Text(
                user.firstName[0].toUpperCase(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                
              ),
            
            ),
          ],
        ),
      ),
    );
  }
}
