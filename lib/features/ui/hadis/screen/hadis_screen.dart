
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/widget/custom_appbar.dart';

class HadisScreen extends StatefulWidget {
  const HadisScreen({super.key});
 static const String name = '/hadis-screen';
  @override
  State<HadisScreen> createState() => _HadisScreenState();
}

class _HadisScreenState extends State<HadisScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomImageAppBar(title: "hadis", onTap: () {
        Get.back();
      },),
    );
  }
}
