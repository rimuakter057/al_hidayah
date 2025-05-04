/*
// file: custom_bottom_nav_bar.dart

import 'package:flutter/material.dart';
import 'package:ibadat/app/utils/color/app_colors.dart';
import 'package:ibadat/app/utils/text/app_text_en.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return BottomNavigationBar(
      backgroundColor: AppColors.secondaryPrimaryColor,
      currentIndex: currentIndex,
      onTap: onTap,
      selectedFontSize: screenWidth * 0.035,
      unselectedFontSize: screenWidth * 0.03,
      iconSize: screenWidth * 0.07,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: const Icon(Icons.home),
          label: AppTextEn.home,
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.list_alt),
          label: AppTextEn.salat,
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.alarm),
          label: AppTextEn.alarm,
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: AppTextEn.profile,
        ),
      ],
    );
  }
}
*/
