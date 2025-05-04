import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hidayah/features/ui/namaz/screens/widget/namaj_details.dart';
import '../../../common/widget/custom_appbar.dart';
import '../data/johor_item_list.dart';

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
      appBar: CustomImageAppBar(
        onTap: () {
          Get.back();
        },
        title: "যোহর",
      ),
      body: NamazDetailsScreen(
        title: johorItemList[0]['title'],
        time: johorItemList[0]['time'],
        rakats: [
          "সুন্নত: ৪ রাকাত",
          "ফরজ: ৪ রাকাত",
          "সুন্নত (পরে): ২ রাকাত",
          "নফল: ২ রাকাত",
        ],
      ),
    );
  }
}
