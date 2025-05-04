import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hidayah/features/ui/namaz/screens/widget/namaj_details.dart';
import '../../../common/widget/custom_appbar.dart';
import '../data/asr_item_list.dart';

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
      appBar: CustomImageAppBar(
        onTap: () {
          Get.back();
        },
        title: "আসর",
      ),
      body: NamazDetailsScreen(
        title: asrItemList[0]['title'],
        time: asrItemList[0]['time'],
        rakats: ["সুন্নত (গৈরে মুআক্কাদা): ৪ রাকাত", "ফরজ: ৪ রাকাত"],
      ),
    );
  }
}
