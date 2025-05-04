import 'package:flutter/material.dart';

import '../../../../../../app/utils/color/app_colors.dart';


Widget sectionTitle(String title, ) {
  return Text(
    title,
    style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: AppColors.primaryColor,
    ),
  );
}

Widget sectionText(String text) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 16,
      height: 1.6,
      color: AppColors.primaryColor,
    ),
  );
}
