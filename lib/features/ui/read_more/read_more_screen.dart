import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hidayah/app/utils/color/app_colors.dart';
import 'package:hidayah/features/common/widget/custom_divider.dart';
import '../../common/widget/custom_appbar.dart';
import 'data/info_list.dart';

class ReadMoreScreen extends StatefulWidget {
  const ReadMoreScreen({super.key});
  static const String name = '/read-more-screen';
  @override
  State<ReadMoreScreen> createState() => _ReadMoreScreenState();
}

class _ReadMoreScreenState extends State<ReadMoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomImageAppBar(
        onTap: () {
          Get.back();
        },
        title: "আরো জানুন",
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: infoList.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Card(
                  shadowColor: AppColors.primaryColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          infoList[index].title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColors.primaryColor,
                            fontSize: 30,
                          ),
                        ),
                        Text(
                          infoList[index].description,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: AppColors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                CustomDivider(),
              ],
            );
          },
        ),
      ),
    );
  }
}
