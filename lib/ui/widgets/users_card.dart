import 'package:dummy_json_app/data/model/user.dart';
import 'package:flutter/material.dart';

class UsersCard extends StatelessWidget {
  final User user;
  final VoidCallback onTap;
  const UsersCard({super.key, required this.user, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.blueAccent.shade100,
          child: Text(
            user.firstName[0].toUpperCase(),
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),

        title: Text(user.firstName,
        style:const TextStyle(
           fontWeight: FontWeight.bold,
           fontSize: 18,
        ) 
        ,),
        subtitle: Column(
          crossAxisAlignment: .start,
          children: [
            Text(user.email),
            const SizedBox(height: 3,),
            Text(user.phone)
          ],
        ),

        trailing: const Icon(Icons.arrow_forward_ios),
        onTap:onTap,
      ),
    );
  }
}
