import 'package:flutter/material.dart';

import 'widgets/logout_button.dart';
import 'widgets/profile_header.dart';
import 'widgets/profile_item.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),

          const ProfileHeader(),

          const SizedBox(height: 20),

          const ProfileItem(
            icon: Icons.person_outline,
            title: "Personal Info",
          ),

          const Divider(height: 1),

          const ProfileItem(
            icon: Icons.language,
            title: "Language",
          ),

          const Divider(height: 1),

          const ProfileItem(
            icon: Icons.flag_outlined,
            title: "Country",
          ),

          const Divider(height: 1),

          const ProfileItem(
            icon: Icons.description_outlined,
            title: "Terms & Conditions",
          ),

          const Divider(height: 1),

          const LogoutButton(),
        ],
      ),
    );
  }
}