import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import '../../../../../../app/utils/asset_path.dart';
import '../../../../../../app/utils/color/app_colors.dart';
import '../../../../../../app/utils/sizes.dart';

class FeaturesWidget extends StatelessWidget {
  const FeaturesWidget({super.key, required this.image, required this.text,required this.onTap});
final String image;
final String text;
final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    // Screen size


    return GestureDetector(
      onTap:onTap ,
      child: Container(
        height: AppSizes.width(context) * 0.24,
        width: AppSizes.width(context) * 0.30,
        decoration: BoxDecoration(
          color: AppColors.secondaryPrimaryColor,
          borderRadius: BorderRadius.circular(AppSizes.width(context) * 0.02), // 8px roughly
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              height: AppSizes.width(context) * 0.11, // ~40px
              width: AppSizes.width(context) * 0.11,
            ),
            SizedBox(height: AppSizes.width(context) * 0.01),
            Text(
              text,
              style: GoogleFonts.poppins(
                fontSize: AppSizes.width(context) * 0.037, // ~14px
                fontWeight: FontWeight.w500,
                color: AppColors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
