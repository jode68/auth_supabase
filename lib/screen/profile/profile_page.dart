import 'package:auth_supabase/auth/auth_service.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final authService = AuthService();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          const Divider(),
          Center(child: const Text('Profile', style: TextStyle(fontSize: 32))),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Email: ${authService.getCurrentUserEmail()}'),
          ),
          const Divider(),
          TextButton(
            onPressed: () => authService.signOut(),
            child: const Text('Sign out', style: TextStyle(fontSize: 16)),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
