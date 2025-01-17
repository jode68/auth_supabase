import 'package:flutter/material.dart';
import 'package:auth_supabase/auth/auth_provider.dart';
import 'package:flutter_login/flutter_login.dart';

class NewLoginPage extends StatelessWidget {
  const NewLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      messages: LoginMessages(
        loginButton: 'Accedi',
        signupButton: 'Registrati',
        forgotPasswordButton: 'Password dimenticata?',
        recoverPasswordIntro:
            'Inserisci il tuo indirizzo email per recuperare la password.',
        recoverPasswordButton: 'Recupera la password',
        recoverPasswordSuccess: 'Password recuperata con successo',
        recoverPasswordDescription:
            'Un email di conferma è stata inviata al tuo indirizzo email.',
        goBackButton: 'Indietro',
        userHint: 'Indirizzo email',
        passwordHint: 'Inserisci password',
        confirmPasswordHint: 'Conferma password',
      ),
      //logo: const AssetImage('assets/images/supabase.png'),
      savedEmail: 'xumepao@yahoo.it',
      savedPassword: '12345678',
      title: 'Autenticazione',
      footer: 'Powered by Flutter & Supabase',
      hideForgotPasswordButton: true,
      onLogin: onLogin,
      onRecoverPassword: onRecoverPassword,
      onSignup: onSignup,
    );
  }
}
