import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../../../../../app/utils/color/app_colors.dart';
import '../../../../../app/utils/sizes.dart';

class SahihBukhariPart4Screen extends StatefulWidget {
  const SahihBukhariPart4Screen({super.key});
  static const String name = '/sahih-bukhari-part-4-screen';
  @override
  State<SahihBukhariPart4Screen> createState() => _SahihBukhariPart4ScreenState();
}

class _SahihBukhariPart4ScreenState extends State<SahihBukhariPart4Screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: AppSizes.defaultPadding(context)),
        child: Column(children: [
          SizedBox(height: 20,),
          Text("সহীহ বুখারী খন্ড ৪",style: TextStyle(
              color: AppColors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 40,),
          Expanded(child: SfPdfViewer.asset("assets/pdf/Sahih_Bukhari_Part-4.pdf")),

        ],),
      ),
    );
  }
}
