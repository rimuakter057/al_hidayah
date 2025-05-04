
import 'package:flutter/material.dart';

import 'custom_theme/text_theme.dart';

class AppTheme {
  AppTheme._();
  static ThemeData lightTheme(BuildContext context) => ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
     // primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: AppTextTheme.lightTextTheme(context),

  );}











