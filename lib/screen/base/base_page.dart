import 'package:flutter/material.dart';
import 'package:supabase_auth_ui/supabase_auth_ui.dart';

class BasePage extends StatelessWidget {
  const BasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Auth Supabase'),
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(32),
        children: [
          SizedBox(height: 32),
          SizedBox(
            height: 200,
            child: Image.asset(
              'assets/images/supabase.png',
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: 32),
          SupaEmailAuth(
            onSignInComplete: (response) {},
            onSignUpComplete: (response) {},
          ),
        ],
      ),
    );
  }
}
