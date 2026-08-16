import 'package:flutter/material.dart';

import '../constants/storage_key.dart';
import '../feature/auth/login/login_screen.dart';
import '../services/shared_preferences_service.dart';

class OnboardingController extends ChangeNotifier {

  final PageController pageController = PageController();

  int currentIndex = 0;

  bool isLastPage = false;

  void onPageChange(int index) {

    currentIndex = index;

    isLastPage = index == 2;

    notifyListeners();
  }

  Future<void> nextPage(BuildContext context) async {

    if (!isLastPage) {

      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );

    } else {

      await SharedPreferencesService.setBool(
        StorageKey.isFirstTime,
        false,
      );

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => LoginScreen(),
        ),
      );

    }
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}