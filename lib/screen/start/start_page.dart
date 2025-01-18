import 'package:flutter/material.dart';
import 'package:auth_supabase/auth/auth_provider.dart';
import 'package:flutter_login/flutter_login.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
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
  }
}
