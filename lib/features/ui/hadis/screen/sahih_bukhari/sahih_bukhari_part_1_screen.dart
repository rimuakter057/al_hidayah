import 'package:flutter/material.dart';
import 'package:hidayah/app/utils/color/app_colors.dart';
import 'package:hidayah/app/utils/sizes.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
class SahihBukhariPart1Screen extends StatefulWidget {
  const SahihBukhariPart1Screen({super.key});
 static const String name = '/sahih-bukhari-part-1-screen';
  @override
  State<SahihBukhariPart1Screen> createState() => _SahihBukhariPart1ScreenState();
}

class _SahihBukhariPart1ScreenState extends State<SahihBukhariPart1Screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: AppSizes.defaultPadding(context)),
        child: Column(children: [
          SizedBox(height: 20,),
          Text("সহীহ বুখারী খন্ড ১",style: TextStyle(
            color: AppColors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 40,),
          Expanded(child: SfPdfViewer.asset("assets/pdf/sahih_bukhari_part_1.pdf")),

        ],),
      ),
    );
  }
}
