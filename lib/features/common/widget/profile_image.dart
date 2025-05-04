import 'package:flutter/material.dart';

import '../../../app/utils/asset_path.dart';
import '../../../app/utils/sizes.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    super.key, required this.size, required this.image,


  });


final double size;
final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}