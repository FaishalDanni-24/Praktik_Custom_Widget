import 'package:flutter/material.dart';
import '../components/custom_button.dart';
import '../components/custom_text_field.dart';
import 'register_screen.dart';
import 'landing_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                const Text(
                  "Selamat Datang",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                const Text(
                  "Silakan masuk ke akun Anda",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                const SizedBox(height: 36),
                const CustomTextField(
                  hintText: "Email",
                  icon: Icons.email_outlined,
                ),
                const SizedBox(height: 16),
                const CustomTextField(
                  hintText: "Password",
                  icon: Icons.lock_outline,
                  obscureText: true,
                ),
                const SizedBox(height: 28),
                CustomPrimaryButton(
                  text: "Masuk",
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LandingScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Belum punya akun? "),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        "Daftar",
                        style: TextStyle(
                          color: Color(0xFF1E88E5),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
