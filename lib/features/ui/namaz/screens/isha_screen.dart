import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hidayah/features/ui/namaz/screens/widget/namaj_details.dart';
import '../../../common/widget/custom_appbar.dart';
import '../data/isha_item_list.dart';

class IshaScreen extends StatefulWidget {
  const IshaScreen({super.key});
  static const String name = '/isha-screen';
  @override
  State<IshaScreen> createState() => _IshaScreenState();
}

class _IshaScreenState extends State<IshaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomImageAppBar(
        onTap: () {
          Get.back();
        },
        title: "ইশা",
      ),
      body: NamazDetailsScreen(
        title: ishaItemList[0]['title'],
        time: ishaItemList[0]['time'],
        rakats: [
          "সুন্নত: ৪ রাকাত",
          "ফরজ: ৪ রাকাত",
          "সুন্নত (পরে): ২ রাকাত",
          "নফল: ২ রাকাত",
          "বিতর: ৩ রাকাত",
        ],
      ),
    );
  }
}
