import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hidayah/app/routes/app_routes.dart';
import 'package:hidayah/app/utils/theme/theme.dart';
import '../features/ui/hadis/screen/hadis_screen.dart';
import '../features/ui/screen/home/screens/home_screen.dart';





class Hidayah extends StatelessWidget {
  const Hidayah({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme(context),
      initialRoute: HadisScreen.name,
      onGenerateRoute: AppRoutes.onGenerateRoute,
      //initialBinding: ControllerBinder(),
    );
  }
}