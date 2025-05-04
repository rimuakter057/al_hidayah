import 'package:flutter/material.dart';

import '../../../../../app/utils/asset_path.dart';
import '../../../../../app/utils/sizes.dart';
import '../data/video_text.dart';
import '../widget/image_box.dart';


class AudioMp3Screen extends StatefulWidget {
  const AudioMp3Screen({super.key});
  static String name = "/audio-mp3-screen";
  @override
  State<AudioMp3Screen> createState() => _AudioMp3ScreenState();
}

class _AudioMp3ScreenState extends State<AudioMp3Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.all(AppSizes.defaultPadding(context)),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: ImageBox(imagePath: AssetImages.infoBackImage)),
             SizedBox(height: AppSizes.width(context)*0.03),
            Expanded(
              child: ListView.builder(
                itemCount: videoText.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    videoText[index],
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }
}


