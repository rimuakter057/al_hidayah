import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../app/utils/asset_path.dart';
import '../../../../../app/utils/sizes.dart';
import '../../../../../app/utils/text/app_text_en.dart';
import '../../../../common/widget/custom_appbar.dart';
import '../../../../common/widget/info_title.dart';
import '../data/prayer_list_text.dart';
import '../widget/date_container.dart';


class PrayerListScreen extends StatefulWidget {
  const PrayerListScreen({super.key});
  static String name = "/prayer-screen";

  @override
  State<PrayerListScreen> createState() => _PrayerListScreenState();
}

class _PrayerListScreenState extends State<PrayerListScreen> {




  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: CustomImageAppBar(title: "Prayer List", onTap: () {
        Get.back();
      },),
      body: Padding(
        padding: EdgeInsets.all(AppSizes.defaultPadding(context)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(AppTextEn.prayerData, style: textTheme.bodyLarge),
            ///prayer date
            _buildPrayerData(context),

            Text(AppTextEn.allPlayerList, style: textTheme.bodyLarge),
            ///prayer list
          _buildPrayerList(),
          ],
        ),
      ),
    );
  }

  ///prayer date
  SingleChildScrollView _buildPrayerData(BuildContext context) {
    return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(7, (index) {
                List<String> weekdays = [
                  'Mon',
                  'Tue',
                  'Wed',
                  'Thu',
                  'Fri',
                  'Sat',
                  'Sun',
                ];
                return Padding(
                  padding: EdgeInsets.only(
                    right: AppSizes.width(context) * 0.056,
                  ),
                  child: DateContainer(
                    number: (index + 11).toString(),
                    day: weekdays[index],
                  ),
                );
              }),
            ),
          );
  }

  ///prayer list
  Expanded _buildPrayerList() {
    return Expanded(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: prayerListText.length,
            shrinkWrap: true,
                 itemBuilder: (BuildContext context, int index) {
              return InfoTitle(title: "title", time: "6:55", iconPath: AssetImages.appbarIcon);
            },
            ),
        );
  }
}
