import 'package:flutter/material.dart';

import 'widgets/logout_button.dart';
import 'widgets/profile_header.dart';
import 'widgets/profile_info_bottom_sheet.dart';
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

          ProfileItem(
            icon: Icons.person_outline,
            title: "Personal Info",
            onTap: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) {
                  return const ProfileInfoBottomSheet();
                },
              );
            },
          ),

          const Divider(height: 1),

          ProfileItem(
            icon: Icons.language,
            title: "Language",
            onTap: () {
              // TODO: Open Language Bottom Sheet
            },
          ),

          const Divider(height: 1),

          ProfileItem(
            icon: Icons.flag_outlined,
            title: "Country",
            onTap: () {
              // TODO: Open Country Bottom Sheet
            },
          ),

          const Divider(height: 1),

          ProfileItem(
            icon: Icons.description_outlined,
            title: "Terms & Conditions",
            onTap: () {
              // TODO: Open Terms Screen
            },
          ),

          const Divider(height: 1),

          const LogoutButton(),
        ],
      ),
    );
  }
}