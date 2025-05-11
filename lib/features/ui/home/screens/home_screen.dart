import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hidayah/features/ui/home/screens/widget/separate_prayer%20name.dart';
import 'package:hidayah/features/ui/home/screens/widget/user_info_container.dart';
import '../../../../../app/utils/color/app_colors.dart';
import '../../../../../app/utils/sizes.dart';
import '../data/fearures_item_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static String name = "/home-screen";
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ///user info header container
          UserInfoContainer(
            child: Padding(
              padding: EdgeInsets.all(AppSizes.defaultPadding(context)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 40),
                  Text(
                    "أَعُوذُ بِاللَّهِ مِنَ الشَّيْطَانِ الرَّجِيمِ",
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "أبِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ",
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              //UserInfoTitle(),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: AppSizes.width(context) * 0.1),

              /// prayer name
              _buildPrayerName(context),
              Text(
                "ইসলামী সেবা সমূহ",
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),

              /// features
              //   _buildFeatures(context),
            ],
          ),

          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemCount: featureItemList.length,
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
                      Get.toNamed(featureItemList[index].route);
                    },
                    child: Card(
                      elevation: 3,
                      shadowColor: AppColors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              featureItemList[index].image,
                              width: width * 0.2,
                              height: width * 0.2,
                              fit: BoxFit.contain,
                            ),
                            SizedBox(height: width * 0.03),
                            Text(
                              featureItemList[index].name,
                              style: TextStyle(
                                fontSize: width * 0.04,
                                fontWeight: FontWeight.w600,
                                color: AppColors.primaryColor,
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
    );
  }

  ///build prayer name
  Column _buildPrayerName(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "সালাতের নাম",
          style: TextStyle(
            color: AppColors.primaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        SizedBox(height: 10),
        SeparatePrayerName(),
      ],
    );
  }
}
