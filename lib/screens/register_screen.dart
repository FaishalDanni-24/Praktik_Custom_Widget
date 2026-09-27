import 'package:flutter/material.dart';
import '../components/custom_button.dart';
import '../components/custom_text_field.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Registrasi")),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Buat Akun Baru",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                const Text(
                  "Lengkapi data di bawah ini",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                const SizedBox(height: 24),
                const CustomTextField(
                  hintText: "Nama Lengkap",
                  icon: Icons.person_outline,
                ),
                const SizedBox(height: 16),
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
                  text: "Daftar Akun",
                  onPressed: () {
                    Navigator.pop(context); // Kembali ke halaman Login
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
