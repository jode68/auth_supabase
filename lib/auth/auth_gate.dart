import 'package:auth_supabase/auth/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:auth_supabase/screen/profile/profile_page.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Supabase.instance.client.auth.onAuthStateChange,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        final session = snapshot.hasData ? snapshot.data!.session : null;
        if (session != null) {
          return ProfilePage();
        }
        return FlutterLogin(
          logoTag: 'logo',
          titleTag: 'title',
          savedEmail: 'xumepao@yahoo.it',
          savedPassword: '12345678',
          title: 'Autenticazione',
          logo: const AssetImage('assets/images/supabase.png'),
          footer: 'Powered by Flutter & Supabase',
          hideForgotPasswordButton: false,
          onLogin: onLogin,
          onRecoverPassword: onRecoverPassword,
          onSignup: onSignup,
        );
      },
    );
  }
}
