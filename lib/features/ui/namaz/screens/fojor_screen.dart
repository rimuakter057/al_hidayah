
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hidayah/features/ui/namaz/screens/widget/namaj_details.dart';

import '../../../common/widget/custom_appbar.dart';

class FojorScreen extends StatefulWidget {
  const FojorScreen({super.key});
  static const String name = '/fojor-screen';

  @override
  State<FojorScreen> createState() => _FojorScreenState();
}

class _FojorScreenState extends State<FojorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomImageAppBar(onTap: (){
        Get.back();
      }, title: "ফজর",),
   body:NamazDetailsScreen(
     title: "ফজর নামাজ",
     time: "ভোরের শুরু থেকে সূর্যোদয় পর্যন্ত (প্রায় ৪:১৫ AM - ৫:৩০ AM)",
     rakats: ["সুন্নত: ২ রাকাত", "ফরজ: ২ রাকাত"],
   ),

    );
  }
}
