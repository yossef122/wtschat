import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SmoothIndicator extends StatelessWidget {
  const SmoothIndicator({
    super.key,
    required this.pageController,
    required this.length,
  });

  final PageController pageController;
  final dynamic length;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController,
      count: length,
      effect: ExpandingDotsEffect(
        dotColor: Colors.grey.withOpacity(0.5),
        activeDotColor: Colors.white,
        dotHeight: 7,
        dotWidth: 20,
        expansionFactor: 5,
        radius: 10,
        spacing: 5,
      ),
    );
  }
}
