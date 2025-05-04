import 'package:flutter/material.dart';

class ProfileList extends StatelessWidget {
  const ProfileList({super.key});

  @override
  Widget build(BuildContext context) {
    double itemWidth = MediaQuery.of(context).size.width * 0.25; // responsive width for text container
    double imageSize = MediaQuery.of(context).size.width * 0.18; // round image size
    double spacing = MediaQuery.of(context).size.width * 0.03;

    return SizedBox(
      height: imageSize + 30, // height for the image + text
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 1, // Only one item, as you mentioned
        padding: EdgeInsets.symmetric(horizontal: spacing),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: spacing),
            child: Column(
              children: [
                Container(
                  width: imageSize,
                  height: imageSize,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/infoBackImage.jpg'), // use the correct path
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                SizedBox(
                  width: itemWidth,
                  child: Text(
                    'Information Image', // Add your desired text here
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.035,
                      overflow: TextOverflow.ellipsis,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
