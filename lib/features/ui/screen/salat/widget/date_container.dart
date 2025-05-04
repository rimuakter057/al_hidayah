import 'package:flutter/material.dart';

import '../../../../../app/utils/color/app_colors.dart';
import '../../../../../app/utils/sizes.dart';
import '../../../../common/widget/Custom_container.dart';

class DateContainer extends StatelessWidget {
  final String number;
  final String day;

  const DateContainer({
    super.key,
    required this.number,
    required this.day,
  });

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(60),
      child: CustomContainer(
        padding: EdgeInsets.all(AppSizes.spaceBtwItems(context)),
        height: AppSizes.width(context) * 0.28,
        width: AppSizes.width(context) * 0.15,
        containerColor: AppColors.secondaryPrimaryColor,
        shape: null,
        child: Column(
          children: [
            CircleAvatar(
              radius: AppSizes.width(context) * 0.06,
              backgroundColor: AppColors.white,
              child: Text(number, style: textTheme.bodyLarge),
            ),
            SizedBox(height: AppSizes.spaceBtwItems(context)),
            Text(day, style: textTheme.bodyMedium),
          ],
        ),
      ),
    );
  }
}
