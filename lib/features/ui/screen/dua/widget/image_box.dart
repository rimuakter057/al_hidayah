import 'package:flutter/material.dart';

class ImageBox extends StatelessWidget {
  final String imagePath;

  const ImageBox({
    super.key,
   required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

   return Container(
    height: height * 0.3,
    width: width * 0.95,
    decoration: BoxDecoration(
      color: Colors.grey.shade200,
         image: DecorationImage(
        image: AssetImage(imagePath),
        fit: BoxFit.cover,
      ),
    ),
    );

  }
}
