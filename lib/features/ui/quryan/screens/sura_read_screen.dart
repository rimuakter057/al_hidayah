import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hidayah/features/ui/quryan/screens/widget/ayat_item.dart';

import '../../../common/widget/custom_appbar.dart';
import '../../../common/widget/custom_divider.dart';

class SuraReadScreen extends StatefulWidget {
  const SuraReadScreen({super.key, required this.suraFile});
  final Map<String, dynamic> suraFile;
  static const name = '/sura-read-screen';

  @override
  State<SuraReadScreen> createState() => _SuraReadScreenState();
}

class _SuraReadScreenState extends State<SuraReadScreen> {
  List<dynamic> readSura = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getJsonData();
  }


  getJsonData() async {
    final responseData = await rootBundle.loadString(
      "assets/data/${widget.suraFile['filename']}.json",
    );
    final decodeData = json.decode(responseData);
    readSura = decodeData['ayats'];
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomImageAppBar(
        title: "সূরা পাঠ করুন",
        onTap: () {
          Get.back();
        },
      ),
      body: SafeArea(
        child: ListView.separated(
          itemCount: readSura.length,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          itemBuilder: (context, index) {
            Map<String, dynamic> ayat = readSura[index];
            return AyatItem(ayat: ayat);
          },
          separatorBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomDivider(),
            );
          },
        ),
      ),
    );
  }
}
