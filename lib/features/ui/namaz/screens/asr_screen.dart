
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hidayah/features/ui/namaz/screens/widget/namaj_details.dart';
import '../../../common/widget/custom_appbar.dart';


class AsrScreen extends StatefulWidget {
  const AsrScreen({super.key});
  static const String name = '/asr-screen';
  @override
  State<AsrScreen> createState() => _AsrScreenState();
}

class _AsrScreenState extends State<AsrScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomImageAppBar(onTap: (){
        Get.back();
      }, title: "আসর",),
      body:NamazDetailsScreen(
        title: "আসর নামাজ",
        time: "বিকেলের শুরু থেকে সূর্যাস্তের পূর্ব পর্যন্ত (প্রায় ৩:৩০ PM - ৫:৪৫ PM)",
        rakats: ["সুন্নত (গৈরে মুআক্কাদা): ৪ রাকাত", "ফরজ: ৪ রাকাত"],
      ),
    );
  }
}
