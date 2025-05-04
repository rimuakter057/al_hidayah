import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../../../../../app/utils/color/app_colors.dart';
import '../../../../../app/utils/sizes.dart';

class SahihBukhariPart3Screen extends StatefulWidget {
  const SahihBukhariPart3Screen({super.key});
  static const String name = '/sahih-bukhari-part-3-screen';
  @override
  State<SahihBukhariPart3Screen> createState() => _SahihBukhariPart3ScreenState();
}

class _SahihBukhariPart3ScreenState extends State<SahihBukhariPart3Screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: AppSizes.defaultPadding(context)),
        child: Column(children: [
          SizedBox(height: 50,),
          Text("সহীহ বুখারী খন্ড ৩",style: TextStyle(
              color: AppColors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 40,),
          Expanded(child: SfPdfViewer.asset("assets/pdf/Sahih_Bukhari_Part-3.pdf")),

        ],),
      ),
    );
  }
}
