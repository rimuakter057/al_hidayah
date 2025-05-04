import 'package:flutter/material.dart';
import 'package:hidayah/app/utils/color/app_colors.dart';
import 'package:hidayah/app/utils/sizes.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
class SahihBukhariPart9Screen extends StatefulWidget {
  const SahihBukhariPart9Screen({super.key});
  static const String name = '/sahih-bukhari-part-9-screen';
  @override
  State<SahihBukhariPart9Screen> createState() => _SahihBukhariPart9ScreenState();
}

class _SahihBukhariPart9ScreenState extends State<SahihBukhariPart9Screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: AppSizes.defaultPadding(context)),
        child: Column(children: [
          SizedBox(height: 20,),
          Text("সহীহ বুখারী খন্ড ৯",style: TextStyle(
              color: AppColors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 40,),
          Expanded(child: SfPdfViewer.asset("assets/pdf/Sahih_Bukhari_Part-9.pdf")),

        ],),
      ),
    );
  }
}
