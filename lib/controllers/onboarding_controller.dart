import 'package:flutter/material.dart';

class OnboardingController extends ChangeNotifier {

  final PageController pageController = PageController();

  int currentIndex = 0;

  bool isLastPage = false;

  void onPageChange(int index) {

    currentIndex = index;

    isLastPage = index == 2;

    notifyListeners();
  }

  void nextPage() {

    if (!isLastPage) {

      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );

    } else {

      // الانتقال إلى Home

    }
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}