import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../../../../../app/utils/color/app_colors.dart';
import '../../../../../app/utils/sizes.dart';

class SahihBukhariPart7Screen extends StatefulWidget {
  const SahihBukhariPart7Screen({super.key});
  static const String name = '/sahih-bukhari-part-7-screen';
  @override
  State<SahihBukhariPart7Screen> createState() => _SahihBukhariPart7ScreenState();
}

class _SahihBukhariPart7ScreenState extends State<SahihBukhariPart7Screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: AppSizes.defaultPadding(context)),
        child: Column(children: [
          SizedBox(height: 50,),
          Text("সহীহ বুখারী খন্ড ৭",style: TextStyle(
              color: AppColors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 40,),
          Expanded(child: SfPdfViewer.asset("assets/pdf/Sahih_Bukhari_Part-7.pdf")),

        ],),
      ),
    );
  }
}
