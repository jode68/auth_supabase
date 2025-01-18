import 'package:flutter/material.dart';
import 'package:supabase_auth_ui/supabase_auth_ui.dart';

class BasePage extends StatelessWidget {
  const BasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade200,
      appBar: AppBar(
        title: const Text('Auth Supabase'),
        backgroundColor: Colors.green.shade400,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(32),
        children: [
          SizedBox(height: 48),
          Container(
            decoration: BoxDecoration(
              //color: Colors.green.shade400,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.green.shade600,
                  blurRadius: 64,
                ),
              ],
            ),
            height: 250,
            child: Image.asset(
              'assets/images/globe.png',
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: 64),
          SupaEmailAuth(
            onSignInComplete: (response) {},
            onSignUpComplete: (response) {},
          ),
        ],
      ),
    );
  }
}
