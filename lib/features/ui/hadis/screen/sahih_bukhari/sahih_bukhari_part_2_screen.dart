import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../../../../../app/utils/color/app_colors.dart';
import '../../../../../app/utils/sizes.dart';

class SahihBukhariPart2Screen extends StatefulWidget {
  const SahihBukhariPart2Screen({super.key});
  static const String name = '/sahih-bukhari-part-2-screen';
  @override
  State<SahihBukhariPart2Screen> createState() => _SahihBukhariPart2ScreenState();
}

class _SahihBukhariPart2ScreenState extends State<SahihBukhariPart2Screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: AppSizes.defaultPadding(context)),
        child: Column(children: [
          SizedBox(height: 50,),
          Text("সহীহ বুখারী খন্ড ২",style: TextStyle(
              color: AppColors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 40,),
          Expanded(child: SfPdfViewer.asset("assets/pdf/Sahih_Bukhari_Part-2.pdf")),

        ],),
      ),
    );
  }
}
