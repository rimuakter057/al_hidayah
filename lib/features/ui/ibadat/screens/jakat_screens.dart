import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../app/utils/color/app_colors.dart';
import '../../../common/widget/custom_appbar.dart';
import '../data/jakat_item.dart';

class JakatScreen extends StatefulWidget {
  const JakatScreen({super.key});
  static const String name = '/jakat-screen';
  @override
  State<JakatScreen> createState() => _JakatScreenState();
}

class _JakatScreenState extends State<JakatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomImageAppBar(
        title: "যাকাত",
        onTap: () {
          Get.back();
        },
      ),
      body: Container(
        color: AppColors.primaryColor,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'যাকাত সম্পর্কে কুরআন ও হাদীসের বাণীসমূহ',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                ...zakatItems.map((item) {
                  return Card(
                    elevation: 4,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item['title']!,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: AppColors.primaryColor,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            item['content']!,
                            style: TextStyle(
                              fontSize: 16,
                              height: 1.5,
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
