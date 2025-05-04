import 'package:flutter/material.dart';


import '../../../../../../app/utils/color/app_colors.dart';
import '../../../../../../app/utils/sizes.dart';
import '../../../../../common/widget/custom_card.dart';
import '../../../../../common/widget/custom_list_tile.dart';

class AllahNameWidget extends StatelessWidget {
  const AllahNameWidget({
    super.key, required this.name, required this.title,
  });
  final String title ;
  final String name ;
  @override
  Widget build(BuildContext context) {
    return CustomCard(

      color: AppColors.primaryColor,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.width(context)* 0.022),
        child: CustomListTile(title: title,
          titleTextStyle:  Theme.of(context).textTheme.titleLarge!.copyWith(color: AppColors.white),
          trailing: Text(name,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(color: AppColors.white),
          ),
        ),

      ),
    );
  }
}