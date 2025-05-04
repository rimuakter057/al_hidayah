import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../../../../../app/utils/color/app_colors.dart';
import '../../../../../app/utils/sizes.dart';

class SahihBukhariPart6Screen extends StatefulWidget {
  const SahihBukhariPart6Screen({super.key});
  static const String name = '/sahih-bukhari-part-6-screen';
  @override
  State<SahihBukhariPart6Screen> createState() => _SahihBukhariPart6ScreenState();
}

class _SahihBukhariPart6ScreenState extends State<SahihBukhariPart6Screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: AppSizes.defaultPadding(context)),
        child: Column(children: [
          SizedBox(height: 20,),
          Text("সহীহ বুখারী খন্ড ৬",style: TextStyle(
              color: AppColors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 40,),
          Expanded(child: SfPdfViewer.asset("assets/pdf/Sahih_Bukhari_Part-6.pdf")),

        ],),
      ),
    );
  }
}
