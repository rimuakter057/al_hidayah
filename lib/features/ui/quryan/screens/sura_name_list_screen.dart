import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hidayah/features/ui/quryan/screens/sura_read_screen.dart';
import '../../../../app/utils/color/app_colors.dart';
import '../../../common/widget/custom_appbar.dart';
import '../../../common/widget/custom_divider.dart';

class SuraNameListScreen extends StatefulWidget {
  const SuraNameListScreen({super.key});
  static const String name = '/surah-name-list-screen';
  @override
  State<SuraNameListScreen> createState() => _SuraNameListScreenState();
}

class _SuraNameListScreenState extends State<SuraNameListScreen> {
  List<dynamic> _suraDetailsList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getJsonData();
  }

  getJsonData() async {
    final responseData = await rootBundle.loadString(
      "assets/data/sura_list.json",
    );
    _suraDetailsList = json.decode(responseData);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomImageAppBar(
        title: "Surah Name List",
        onTap: () {
          Get.back();
        },
      ),
      body: ListView.separated(
        itemCount: _suraDetailsList.length,
        itemBuilder: (context, index) {
          var data = _suraDetailsList[index];

          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SuraReadScreen(suraFile: _suraDetailsList[index]);
                  },
                ),
              );
            },
            child: ListTile(
              leading: SizedBox(
                height: 45,
                width: 45,
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/star_outline.png',
                      color: AppColors.primaryColor,
                    ),
                    Center(
                      child: Text(
                        data['number'].toString(),
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              title: Text(
                data['englishName'],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryColor,
                ),
              ),
              subtitle: Text(
                data['name'],
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              trailing: Column(
                children: [
                  Text(
                    data["revelationType"],
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColors.primaryColor,
                    ),
                  ),
                  Text(
                    'Ayat ${data['ayatNumber']}'.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustomDivider(),
          );
        },
      ),
    );
  }
}
