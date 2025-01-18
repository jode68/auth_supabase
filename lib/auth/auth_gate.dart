import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:auth_supabase/screen/profile/profile_page.dart';
import 'package:auth_supabase/screen/start/start_page.dart';

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
        return StartPage();
      },
    );
  }
}
