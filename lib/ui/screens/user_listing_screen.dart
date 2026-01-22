import 'package:dummy_json_app/provider/user_provider.dart';
import 'package:dummy_json_app/ui/widgets/users_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserListingScreen extends StatelessWidget {
  const UserListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<UserProvider>();
    return Scaffold(
      appBar: AppBar(title: Text('User Listing')),
      body: _buildBody(provider),
    );
  }

  Widget _buildBody(UserProvider provider) {
    if (provider.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (provider.errorMessage != null) {
      return Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            const Icon(
              Icons.error_outline_outlined,
              size: 36,
              color: Colors.red,
            ),
            const SizedBox(height: 10),
            Text('Error: ${provider.errorMessage}'),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                provider.loadUsers();
              },
              child: Text('Retry'),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      itemCount: provider.users.length,
      itemBuilder: (context, index) {
        final user = provider.users[index];
        return UsersCard(
          user: user,
          onTap: () {
            provider.selectUser(user);
            Navigator.pushNamed(context, '/details');
          },
        );
      },
    );
  }
}
