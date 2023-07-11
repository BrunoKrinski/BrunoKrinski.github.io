import 'package:gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:portifolio/utils/custom_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

LayoutBuilder educationScreen() {

  TextStyle formationStyle() {
    return TextStyle(
      color: CustomColors.white,
      fontWeight: FontWeight.bold,
      fontSize: 40.sp,
    );
  }

  TextStyle universityStyle() {
    return TextStyle(
      color: Colors.green,
      fontSize: 25.sp,
    );
  }

  TextStyle localStyle() {
    return TextStyle(
      color: Colors.green,
      fontSize: 25.sp,
    );
  }

  TextStyle periodStyle() {
    return TextStyle(
      color: CustomColors.white,
      fontSize: 25.sp,
    );
  }

  Column formation(String formation, String university, String local, String init, String end) {
    return Column(
      children: [
        Text(formation, style: formationStyle()),
        Text(university, style: universityStyle()),
        Text(local, style: localStyle()),
        Text('$init - $end', style: periodStyle()),
      ],
    );
  }

  Container smallLayout() {
    return Container();
  }

  Container largeLayout() {
    return Container(
      height: 600.sp,
      padding: EdgeInsets.symmetric(vertical: 25.sp, horizontal: 50.sp),
      color: CustomColors.darkGrey.withOpacity(0.85),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          formation('PhD in Computer Science',
              'Federal University of Paraná (UFPR)',
              'Curitiba, Paraná - Brazil',
              'October - 2019', 'Ongoing'),
          Gap(25.sp),
          formation('MsC in Computer Science',
                    'Federal University of Paraná (UFPR)',
                    'Curitiba, Paraná - Brazil',
                    'January - 2017', 'August - 2019'),
          Gap(25.sp),
          formation('Bachelor in Computer Science',
              'Federal University of Paraná (UFPR)',
              'Curitiba, Paraná - Brazil',
              'January - 2012', 'December - 2016'),
        ],
      ),
    );
  }

  return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {

        /*if (constraints.maxWidth < 900) {
          return smallLayout();
        }*/
        return largeLayout();
      });
}