
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hidayah/features/ui/namaz/screens/widget/namaj_details.dart';
import '../../../common/widget/custom_appbar.dart';

class MagribScreen extends StatefulWidget {
  const MagribScreen({super.key});
  static const String name = '/magrib-screen';
  @override
  State<MagribScreen> createState() => _MagribScreenState();
}

class _MagribScreenState extends State<MagribScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomImageAppBar(onTap: (){
        Get.back();
      }, title: "মাগরিব",),
      body: NamazDetailsScreen(
        title: "মাগরিব নামাজ",
        time: "সূর্যাস্তের পর থেকে (প্রায় ৬:৩০ PM - ৮:০০ PM)",
        rakats: ["ফরজ: ৩ রাকাত", "সুন্নত: ২ রাকাত", "নফল: ২ রাকাত"],
      ),
    );
  }
}
