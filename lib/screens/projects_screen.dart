import 'package:gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portifolio/utils/publications.dart';
import 'package:portifolio/utils/custom_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

LayoutBuilder projectsScreen() {

  Container largeLayout(double width) {
    return Container(
      height: 600.sp,
      //height: 2400.sp,
      padding: EdgeInsets.symmetric(vertical: 15.sp, horizontal: 50.sp),
      color: CustomColors.darkGrey.withOpacity(0.99),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('Under Construction...', style: TextStyle(color: CustomColors.white, fontSize: 50.sp),),)
        ],
      ),
    );
  }

  return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        /*if (constraints.maxWidth < 900) {
          return smallLayout();
        }*/
        return largeLayout(constraints.maxWidth);
      });
}
