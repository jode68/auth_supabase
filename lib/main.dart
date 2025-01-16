import 'package:auth_supabase/auth/auth_gate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJraWd3emNxY2diZGNuZ3lzaGduIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzY5NjEwOTMsImV4cCI6MjA1MjUzNzA5M30.nXKmhRDU1kK3K5DzgRLeg9Z9hNv0CiukCMf9colpmKI',
    url: 'https://rkigwzcqcgbdcngyshgn.supabase.co',
  );
  runApp(
    ProviderScope(child: MainApp()),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auth Supabase',
      theme: ThemeData(primarySwatch: Colors.blue),
      // home: LoginPage(),
      home: AuthGate(),
    );
  }
}
