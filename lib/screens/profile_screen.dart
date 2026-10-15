import 'package:flutter/material.dart';

import '../widgets/profile_header.dart';
import '../widgets/profile_info.dart';
import '../widgets/social_media_row.dart';
import '../widgets/action_buttons.dart';
import 'about_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      SizedBox(height: 16),
                      ProfileHeader(
                        name: 'Naufal Abid Syaikha Daffa Ulhaq',
                        nim: '25.11.6552',
                      ),
                      SizedBox(height: 16),
                      SocialMediaRow(),
                      SizedBox(height: 16),
                      Divider(),
                      SizedBox(height: 16),
                      ProfileInfo(
                        programStudi: 'S1 Informatika',
                        email: 'n.abid@students.amikom.ac.id',
                        lokasi: 'Yogyakarta, Indonesia',
                      ),
                    ],
                  ),
                ),
              ),
              ActionButtons(
                onAboutPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AboutScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
