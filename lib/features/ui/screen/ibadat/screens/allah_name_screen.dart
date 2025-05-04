import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hidayah/features/ui/screen/ibadat/screens/widget/allah_name.dart';

import '../../../../../app/utils/sizes.dart';
import '../../../../common/widget/custom_appbar.dart';
import '../data/model/allah_name.dart';


class AllahNameScreen extends StatefulWidget {
  const AllahNameScreen({super.key});
  static const String name = '/name-screen';
  @override
  State<AllahNameScreen> createState() => _AllahNameScreenState();
}

class _AllahNameScreenState extends State<AllahNameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomImageAppBar(title: "গুনবাচক নাম সমূহ", onTap: () {
        Get.back();
      },),
      body: Padding(
        padding:  EdgeInsets.all(AppSizes.defaultPadding(context)),
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.symmetric(vertical:AppSizes.width(context)*0.015),
              child: Text("আল-আস্মাউল-হুসনা", style:Theme.of(context).textTheme.bodyLarge),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: AllahNameData.allahNames.length,  // Using the fixed list of names
                itemBuilder: (context, index) {
                  final allahName = AllahNameData.allahNames[index];
                  return AllahNameWidget(
                  title:   '${index + 1}- ${allahName.title}',
                    name: allahName.name,
                  );
                },
              ),
            ),
          ],
        ),
      ),


    );
  }
}




