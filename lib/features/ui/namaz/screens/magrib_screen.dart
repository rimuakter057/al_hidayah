import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hidayah/features/ui/namaz/screens/widget/namaj_details.dart';
import '../../../common/widget/custom_appbar.dart';
import '../data/magrib_item_list.dart';

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
      appBar: CustomImageAppBar(
        onTap: () {
          Get.back();
        },
        title: "মাগরিব",
      ),
      body: NamazDetailsScreen(
        title: magribItemList[0]['title'],
        time: magribItemList[0]['time'],
        rakats: ["ফরজ: ৩ রাকাত", "সুন্নত: ২ রাকাত", "নফল: ২ রাকাত"],
      ),
    );
  }
}
