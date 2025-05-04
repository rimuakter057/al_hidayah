import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../app/utils/sizes.dart';

import '../../../../common/widget/profile_image.dart';
import '../../data/prayer_name_list.dart';




class SeparatePrayerName extends StatelessWidget {
  const SeparatePrayerName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizes.width(context) * 0.3,
      child: ListView.separated(
        itemCount: prayerNameList.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var prayerItem=prayerNameList[index];
          return GestureDetector(
            onTap:(){
              Get.toNamed(prayerItem.route);
            },
            child: Column(
              children: [
                ProfileImage(size: AppSizes.width(context) * 0.15, image:prayerItem.image,),
                SizedBox(height: AppSizes.width(context) * 0.02),
                Text(
                  prayerItem.name,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(width: AppSizes.width(context) * 0.04);
        },
      ),
    );
  }
}