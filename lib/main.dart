import 'package:flutter/material.dart';
import 'register.dart'; // Import the register page
import 'login.dart'; // Import the login page
import 'dashboard.dart'; // Import the dashboard page
import 'kas.dart'; // Import the kas page
import 'profile.dart'; // Import the profil page

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SIMAKO',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RegisterPage(), // Set RegisterPage as the initial route
      routes: {
        '/register': (context) => RegisterPage(),
        '/login': (context) => LoginPage(),
        '/dashboard': (context) => DashboardPage(),
        '/kas': (context) => KasPage(), // Tambahkan rute KAS
        '/profile': (context) => ProfilePage(), // Tambahkan rute profil
      },
    );
  }
}
