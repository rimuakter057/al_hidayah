
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hidayah/features/ui/namaz/screens/widget/namaj_details.dart';

import '../../../common/widget/custom_appbar.dart';

class JohorScreen extends StatefulWidget {
  const JohorScreen({super.key});
 static const String name = '/johor-screen';
  @override
  State<JohorScreen> createState() => _JohorScreenState();
}

class _JohorScreenState extends State<JohorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomImageAppBar(onTap: (){
        Get.back();
      }, title: "যোহর",),
      body:  NamazDetailsScreen(
        title: "যোহর নামাজ",
        time: "সূর্য ঢলে পড়া থেকে (প্রায় ১২:১৫ PM - ৩:১৫ PM)",
        rakats: ["সুন্নত: ৪ রাকাত", "ফরজ: ৪ রাকাত", "সুন্নত (পরে): ২ রাকাত", "নফল: ২ রাকাত"],
      ),
    );
  }
}
