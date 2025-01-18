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
          SizedBox(height: 32),
          Container(
            decoration: BoxDecoration(
              color: Colors.green.shade600,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 8,
                ),
              ],
            ),
            height: 250,
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
