import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../../../../../app/utils/color/app_colors.dart';
import '../../../../../app/utils/sizes.dart';

class SahihBukhariPart5Screen extends StatefulWidget {
  const SahihBukhariPart5Screen({super.key});
  static const String name = '/sahih-bukhari-part-5-screen';
  @override
  State<SahihBukhariPart5Screen> createState() => _SahihBukhariPart5ScreenState();
}

class _SahihBukhariPart5ScreenState extends State<SahihBukhariPart5Screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: AppSizes.defaultPadding(context)),
        child: Column(children: [
          SizedBox(height: 20,),
          Text("সহীহ বুখারী খন্ড ৫",style: TextStyle(
              color: AppColors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 40,),
          Expanded(child: SfPdfViewer.asset("assets/pdf/Sahih_Bukhari_Part-5.pdf")),

        ],),
      ),
    );
  }
}
