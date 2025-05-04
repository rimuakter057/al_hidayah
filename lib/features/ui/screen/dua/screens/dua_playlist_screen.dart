import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../app/utils/asset_path.dart';
import '../../../../../app/utils/color/app_colors.dart';
import '../../../../../app/utils/sizes.dart';
import '../../../../common/widget/custom_appbar.dart';
import '../../../../common/widget/info_title.dart';
import '../../salat/widget/date_container.dart';
import 'audio_mp3_screen.dart';



class DuaPlayListScreen extends StatefulWidget {
  const DuaPlayListScreen({super.key});
  static String name = "/dua-playlist-screen";

  @override
  State<DuaPlayListScreen> createState() => _DuaPlayListScreenState();
}

class _DuaPlayListScreenState extends State<DuaPlayListScreen> {




  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: CustomImageAppBar(title: "Dua Playlist", onTap: () {
        Get.back();
      },),
      body: Padding(
        padding: EdgeInsets.all(AppSizes.defaultPadding(context)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// header text
            _buildText(context, textTheme),
           /// dua playlist
            _buildDuaPlaylist(),
          ],
        ),
      ),
    );
  }
  /// header text
  Padding _buildText(BuildContext context, TextTheme textTheme) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical:AppSizes.width(context)*0.015),
      child: Row(
        children: [
          Text("Dua Playlist", style: textTheme.bodyLarge),
          Spacer(),
          Text("view all", style: textTheme.bodyMedium!.copyWith(color: AppColors.primaryColor)),
        ],
      ),
    );
  }
  /// dua playlist
  Widget _buildDuaPlaylist() {
    return Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 40,
              shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                    onTap: (){
                      Get.toNamed(AudioMp3Screen.name);
                    },
                    child: InfoTitle(title: "Islamic dua", time: "play", iconPath: AssetImages.duaPlay));

              },
            ),
          );
  }

}
