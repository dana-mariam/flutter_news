class OnboardingModel {
  final String image;
  final String title;
  final String description;

  OnboardingModel({
    required this.image,
    required this.title,
    required this.description,
  });

  static List<OnboardingModel> onboardingList = [
    OnboardingModel(
      image: 'assets/images/Frame 1000003314 (2).png',
      title: 'Trending News',
      description:
      'Stay in the loop with the biggest breaking stories in a stunning and simple experience.',
    ),
    OnboardingModel(
      image: 'assets/images/Frame 1000003314 (1).png',
      title: 'Pick What You Love',
      description:
      'No more endless scrolling. Jump into your favorite topics like Technology, Sports, Business and more.',
    ),
    OnboardingModel(
      image: 'assets/images/Frame 1000003314.png',
      title: 'Save It. Read It Later. Stay Smart.',
      description:
      'Found something interesting? Tap the bookmark and come back to it anytime.',
    ),
  ];
}