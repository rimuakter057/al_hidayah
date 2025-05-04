import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hidayah/app/utils/color/app_colors.dart';
import '../../../../app/utils/sizes.dart';
import '../../../common/widget/custom_appbar.dart';
import '../data/hadis_name_list.dart';

class HadisScreen extends StatefulWidget {
  const HadisScreen({super.key});
  static const String name = '/hadis-screen';
  @override
  State<HadisScreen> createState() => _HadisScreenState();
}

class _HadisScreenState extends State<HadisScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomImageAppBar(
        title: "হাদীস",
        onTap: () {
          Get.back();
        },
      ),
      body: Column(
        children: [
          Text(
            "সহীহ বুখারী",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColors.primaryColor,
              fontSize: 30,
            ),
          ),
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemCount: hadisNameList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: AppSizes.width(context) * 0.03,
                crossAxisSpacing: AppSizes.width(context) * 0.03,
                childAspectRatio: 1, // square item
              ),
              itemBuilder: (context, index) {
                final width = AppSizes.width(context);

                return Padding(
                  padding: EdgeInsets.all(AppSizes.defaultPadding(context)),
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(hadisNameList[index].route);
                    },
                    child: Card(
                      color: AppColors.primaryColor,
                      elevation: 3,
                      shadowColor: AppColors.greyShade,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              hadisNameList[index].image,
                              color: AppColors.white,
                              width: width * 0.2,
                              height: width * 0.2,
                              fit: BoxFit.contain,
                            ),
                            SizedBox(height: width * 0.03),
                            Text(
                              hadisNameList[index].name,
                              style: TextStyle(
                                fontSize: width * 0.04,
                                fontWeight: FontWeight.w600,
                                color: AppColors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),

      /*SfPdfViewer.asset(
            'assets/pdf/sahih_bukhari_part_1.pdf'),*/
    );
  }
}
