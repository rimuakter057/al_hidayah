import 'package:flutter/material.dart';

import '../../../../../app/utils/color/app_colors.dart';


class AyatItem extends StatelessWidget {
  const AyatItem({
    super.key,
    required this.ayat,
  });

  final Map ayat;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 36,
            width: 36,
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/star.png',
                  color: AppColors.primaryColor,
                ),
                Center(
                  child: Text(
                    '${ayat['number']}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      '${ayat['arabic']}',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(height: 6),
                Text('${ayat['bangla']}'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
