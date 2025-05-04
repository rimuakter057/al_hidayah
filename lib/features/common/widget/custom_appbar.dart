import 'package:flutter/material.dart';

import '../../../../app/utils/asset_path.dart';
import '../../../app/utils/sizes.dart';

class CustomImageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomImageAppBar({super.key, this.title, this.widget,required this.onTap, });
 final Widget?widget;
  final String? title;
  final void Function() onTap;


  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 50); // approx 117 height

  @override
  Widget build(BuildContext context) {


    final appBarHeight = AppSizes.height(context) * 0.145; // ~117/812
    final iconSize = AppSizes.width(context) * 0.062;
    final horizontalPadding = AppSizes.width(context) * 0.04;
    final verticalPadding = AppSizes.height(context) * 0.025;

    return Container(
      height: appBarHeight,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            AssetImages.infoBackImage,
          ),
          fit: BoxFit.cover,
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding,
        vertical: verticalPadding,
      ),
      child: Row(
        children: [
          // Profile Icon
          GestureDetector(
            onTap:onTap,
            child: Image.asset(
              AssetImages.appbarIcon, // তোমার asset path
              height: iconSize,
              width: iconSize,
              fit: BoxFit.cover,
            ),
          ),

          SizedBox(width: AppSizes.width(context) * 0.06),
          // Title Text
          Text(
          title??"",
            style:Theme.of(context).textTheme.titleMedium,
          ),
          const Spacer(),
         widget??Text(""),
        ],
      ),
    );
  }
}
