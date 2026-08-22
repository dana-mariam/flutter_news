import 'package:flutter/material.dart';

import 'profile_bottom_sheet.dart';

class ProfileInfoBottomSheet extends StatelessWidget {
  const ProfileInfoBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return ProfileBottomSheet(
      title: "Profile Info",
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            decoration: const InputDecoration(
              labelText: "User Name",
              border: OutlineInputBorder(),
            ),
          ),

          const SizedBox(height: 16),

          TextField(
            decoration: const InputDecoration(
              labelText: "Email",
              border: OutlineInputBorder(),
            ),
          ),

          const SizedBox(height: 16),

          TextField(
            decoration: const InputDecoration(
              labelText: "Phone",
              border: OutlineInputBorder(),
            ),
          ),

          const SizedBox(height: 24),

          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Save"),
            ),
          ),
        ],
      ),
    );
  }
}