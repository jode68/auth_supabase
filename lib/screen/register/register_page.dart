import 'package:auth_supabase/auth/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final authService = AuthService();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final passwordConfirmController = TextEditingController();

    void sinup() async {
      final email = emailController.text;
      final password = passwordController.text;
      final passwordConfirm = passwordConfirmController.text;

      if (password != passwordConfirm) {
        Get.snackbar(
          'Error',
          'Password does not match',
          backgroundColor: Colors.red,
          colorText: Colors.white,
          snackPosition: SnackPosition.BOTTOM,
        );
        return;
      }

      try {
        await authService.signUp(email, password);
        Get.back();
      } catch (e) {
        Get.snackbar(
          'Error',
          e.toString(),
          backgroundColor: Colors.red,
          colorText: Colors.white,
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Register Page'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          const SizedBox(height: 30),
          Center(
            child: const Text('Register.....', style: TextStyle(fontSize: 32)),
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
          TextField(
            controller: passwordConfirmController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Confirm Password',
            ),
            autocorrect: false,
            obscureText: true,
            textCapitalization: TextCapitalization.none,
            keyboardType: TextInputType.visiblePassword,
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () => sinup(),
            child: const Text('Register'),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Already have an account? ',
                  style: TextStyle(color: Colors.grey)),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.blueAccent,
                ),
                onPressed: () => Get.back(),
                child: const Text('Sign in'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
