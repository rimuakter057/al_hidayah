import 'package:flutter/material.dart';
import 'package:hidayah/app/utils/color/app_colors.dart';
import 'package:hidayah/app/utils/sizes.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
class SahihBukhariPart10Screen extends StatefulWidget {
  const SahihBukhariPart10Screen({super.key});
  static const String name = '/sahih-bukhari-part-10-screen';
  @override
  State<SahihBukhariPart10Screen> createState() => _SahihBukhariPart10ScreenState();
}

class _SahihBukhariPart10ScreenState extends State<SahihBukhariPart10Screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: AppSizes.defaultPadding(context)),
        child: Column(children: [
          SizedBox(height: 50,),
          Text("সহীহ বুখারী খন্ড ১০",style: TextStyle(
              color: AppColors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 40,),
          Expanded(child: SfPdfViewer.asset("assets/pdf/sahih_bukhari_part_10.pdf")),

        ],),
      ),
    );
  }
}
