import 'package:flutter/material.dart';
import '../components/custom_card.dart';
import '../components/custom_primary_button.dart';
import 'login_screen.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Beranda / Landing Page"),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Selamat Datang Kembali!",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const CustomCard(
              title: "Profil Pengguna",
              subtitle: "Status: Terverifikasi",
              icon: Icons.account_circle,
            ),
            const SizedBox(height: 12),
            const CustomCard(
              title: "Informasi Sistem",
              subtitle: "Project UI Kustom Flutter versi 1.0",
              icon: Icons.info_outline,
            ),
            const Spacer(),
            CustomPrimaryButton(
              text: "Keluar (Logout)",
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
