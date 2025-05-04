import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../app/utils/asset_path.dart';
import '../../../../../app/utils/color/app_colors.dart';
import '../../../../../app/utils/sizes.dart';
import '../../../common/widget/custom_appbar.dart';
import '../../../common/widget/custom_button.dart';

class TasbihCountScreen extends StatefulWidget {
  const TasbihCountScreen({super.key});
  static const String name = '/tasbih-screen';
  @override
  State<TasbihCountScreen> createState() => _TasbihCountScreenState();
}

class _TasbihCountScreenState extends State<TasbihCountScreen> {
  int count = 0;
  void increment() {
    setState(() {
      count++;
    });
  }

  void clear() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: CustomImageAppBar(
        title: "তাসবিহ",
        onTap: () {
          Get.back();
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultPadding(context)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ///name text
              Column(
                children: [
                  Text(
                    "AR-RAHMAN",
                    style: textTheme.bodyLarge!.copyWith(
                      color: AppColors.primaryColor,
                    ),
                  ),
                  Text(
                    "The Most Or Entirely Merciful",
                    style: textTheme.titleSmall,
                  ),
                ],
              ),

              SizedBox(height: AppSizes.width(context) * 0.1),

              ///tasbih counter text
              Column(
                children: [
                  Text(count.toString(), style: textTheme.bodyLarge),
                  Text(
                    "Tasbih Counter",
                    style: textTheme.titleSmall!.copyWith(
                      color: AppColors.black,
                    ),
                  ),
                ],
              ),

              SizedBox(height: AppSizes.width(context) * 0.12),

              ///image
              Image.asset(
                AssetImages.tasbihCount,
                height: AppSizes.height(context) * 0.20,
                width: AppSizes.width(context) * 0.40,
                fit: BoxFit.contain,
              ),

              SizedBox(height: AppSizes.width(context) * 0.2),

              /// count button
              CustomButton(text: "count", onPressed: increment),
              SizedBox(height: 20),

              /// clear button
              CustomButton(
                text: "Clear",
                textColor: AppColors.primaryColor,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(
                    MediaQuery.sizeOf(context).width * 0.08,
                  ),
                  border: Border.all(color: AppColors.primaryColor),
                ),
                onPressed: clear,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
