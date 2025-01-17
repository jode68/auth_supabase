import 'package:auth_supabase/auth/auth_service.dart';
import 'package:flutter_login/flutter_login.dart';

Future<String?> onLogin(LoginData data) async {
  final authService = AuthService();
  try {
    await authService.signIn(data.name, data.password);
  } catch (e) {
    return e.toString();
  }
  return null;
}

Future<String?> onSignup(SignupData data) async {
  final authService = AuthService();
  try {
    await authService.signUp(data.name!, data.password!);
    return null;
  } catch (e) {
    return e.toString();
  }
}

Future<String?> onRecoverPassword(String email) async {
  return null;
}
