import 'package:auth_supabase/auth/auth_service.dart';
import 'package:auth_supabase/screen/register/register_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final authService = AuthService();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    emailController.text = 'pao@tin.it';
    passwordController.text = '11111111';

    void login() async {
      final email = emailController.text;
      final password = passwordController.text;
      try {
        await authService.signIn(email, password);
      } catch (e) {
        Get.snackbar(
          'Error',
          e.toString(),
          backgroundColor: Colors.green,
          colorText: Colors.white,
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          const SizedBox(height: 30),
          Center(
            child: const Text('Login.....', style: TextStyle(fontSize: 32)),
          ),
          const SizedBox(height: 30),
          TextField(
            controller: emailController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Email',
            ),
            autocorrect: false,
            autofocus: true,
            textCapitalization: TextCapitalization.none,
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 30),
          TextField(
            controller: passwordController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
            ),
            autocorrect: false,
            obscureText: true,
            textCapitalization: TextCapitalization.none,
            keyboardType: TextInputType.visiblePassword,
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () => login(),
            child: const Text('Login'),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Don\'t have an account?',
                  style: TextStyle(color: Colors.grey)),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.blueAccent,
                ),
                onPressed: () => Get.to(() => const RegisterPage()),
                child: const Text('Sign Up'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
