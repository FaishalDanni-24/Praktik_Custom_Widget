import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Demo Custom Widget',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color(0xFFF5F5F5),
        useMaterial3: true,
        textTheme: GoogleFonts.robotoTextTheme(
          Theme.of(context).textTheme,
        )
      ),
      home: const LoginScreen(),
    );
  }
}