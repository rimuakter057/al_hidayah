import 'package:flutter/material.dart';
import '../../../../../../app/utils/asset_path.dart';
import '../../../../../../app/utils/sizes.dart';

class UserInfoContainer extends StatelessWidget {
  const UserInfoContainer({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSizes.height(context) * 0.283,
      width: AppSizes.width(context) * 1.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AssetImages.infoBackImage),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(AppSizes.width(context) * 0.05),
        ),
      ),
      child: child,
    );
  }
}
