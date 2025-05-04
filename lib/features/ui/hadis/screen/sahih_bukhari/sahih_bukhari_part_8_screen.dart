import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../../../../../app/utils/color/app_colors.dart';
import '../../../../../app/utils/sizes.dart';

class SahihBukhariPart8Screen extends StatefulWidget {
  const SahihBukhariPart8Screen({super.key});
  static const String name = '/sahih-bukhari-part-8-screen';
  @override
  State<SahihBukhariPart8Screen> createState() => _SahihBukhariPart8ScreenState();
}

class _SahihBukhariPart8ScreenState extends State<SahihBukhariPart8Screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: AppSizes.defaultPadding(context)),
        child: Column(children: [
          SizedBox(height: 20,),
          Text("সহীহ বুখারী খন্ড ৮",style: TextStyle(
              color: AppColors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 40,),
          Expanded(child: SfPdfViewer.asset("assets/pdf/Sahih_Bukhari_Part-8.pdf")),

        ],),
      ),
    );
  }
}
