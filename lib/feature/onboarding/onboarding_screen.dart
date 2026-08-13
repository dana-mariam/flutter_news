import 'package:flutter/material.dart';

import '../models/onboarding_model.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,

        actions: [
          TextButton(
            onPressed: () {
              // TODO: الانتقال إلى HomeScreen
            },
            child: const Text(
              "Skip",
              style: TextStyle(
                color: Color(0xFFC53030),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),

      body: PageView.builder(
        itemCount: OnboardingModel.onboardingList.length,
        itemBuilder: (BuildContext context, int index) {
          final OnboardingModel model =
          OnboardingModel.onboardingList[index];

          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(model.image),

              const SizedBox(height: 24),

              Text(
                model.title,
                style: const TextStyle(
                  fontSize: 20,
                  color: Color(0xFF4E4B66),
                  fontWeight: FontWeight.w700,
                ),
              ),

              const SizedBox(height: 12),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  model.description,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color(0xFF6E7191),
                    height: 1.5,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}