import 'package:flutter/material.dart';


import '../../../../../../app/utils/asset_path.dart';
import '../../../../../../app/utils/color/app_colors.dart';
import '../../../../../../app/utils/sizes.dart';
import '../../../../../common/widget/custom_list_tile.dart';
import '../../../../../common/widget/custom_text.dart';
import '../../../../../common/widget/profile_image.dart';



class UserInfoTitle extends StatelessWidget {


  const UserInfoTitle({
    super.key,

  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric(
            vertical: screenHeight * 0.015,
      ),
      child:CustomListTile(
        leading: ProfileImage(size: AppSizes.width(context) * 0.15, image: AssetImages.profileImage ,) ,
        title: 'Rimu',
        titleTextStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(color: AppColors.white),
        subtitle: "App Developer",
        trailing:IconButton(onPressed: (){},
            style: IconButton.styleFrom(

              backgroundColor: AppColors.greyShade,
              shape: const CircleBorder(), ),
            icon: Icon(Icons.notification_add_outlined,color: AppColors.primaryColor,))

      ),



     /* ListTile(
        leading: Icon(
          leadingIcon,
          size: screenWidth * 0.1,
          color: AppColors.primaryColor,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: screenWidth * 0.05,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
            fontSize: screenWidth * 0.035,
            color: Colors.grey[700],
          ),
        ),
        trailing: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            shape: BoxShape.circle,
          ),
          padding: EdgeInsets.all(screenWidth * 0.025),
          child: Icon(
            trailingIcon,
            color: AppColors.primaryColor,
            size: screenWidth * 0.06,
          ),
        ),
      ),*/
    );
  }
}
