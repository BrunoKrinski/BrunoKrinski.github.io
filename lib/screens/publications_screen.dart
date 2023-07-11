import 'package:gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portifolio/utils/publications.dart';
import 'package:portifolio/utils/custom_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

LayoutBuilder publicationsScreen() {
  Column publication(Map<String, dynamic> publication) {
    return Column(
      children: [
        Gap(10.sp),
        Text(
          publication['title'],
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30.sp,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),
        Gap(10.sp),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            for (var i = 0; i < publication['authors'].length; i++)
              TextButton(
                onPressed: () {
                  launchUrl(Uri.parse(publication['authors'][i]['link']));
                },
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(CustomColors.lightGrey),
                ),
                child: Text(
                  publication['authors'][i]['name'],
                  style: TextStyle(fontSize: 25.sp, color: Colors.blueAccent),
                ),
              ),
            //Text(publication['authors'][i]['name'])
          ],
        ),
        Gap(10.sp),
        Text(
          publication['resume'],
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: 15.sp,
            color: CustomColors.white,
          ),
        ),
        Gap(10.sp),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Year: ${publication['year']}',
              style: TextStyle(
                fontSize: 15.sp,
                color: CustomColors.white,
              ),
            ),
          ],
        ),
        Gap(5.sp),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {
                launchUrl(Uri.parse(publication['github']));
              },
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(Size(150.sp, 50.sp)),
                //fixedSize: MaterialStateProperty.all(Size(70.sp, 10.sp)),
                //overlayColor: MaterialStateProperty.all(Colors.transparent),
              ),
              child: Text(
                'Github',
                style: TextStyle(
                  fontSize: 15.sp,
                  color: CustomColors.white,
                ),
              ),
            ),
            Gap(10.sp),
            ElevatedButton(
              onPressed: () {
                launchUrl(Uri.parse(publication['link']));
              },
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(Size(150.sp, 50.sp)),
              ),
              child: Text(
                publication['publisher'],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.sp,
                  color: CustomColors.white,
                ),
              ),
            ),
            Gap(10.sp),
            ElevatedButton(
              onPressed: () {
                launchUrl(Uri.parse(publication['arxiv']));
              },
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(Size(150.sp, 50.sp)),
              ),
              child: Text(
                'ArXiv',
                style: TextStyle(
                  fontSize: 15.sp,
                  color: CustomColors.white,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Container largeLayout(double width) {
    return Container(
      height: width < 1000? 2400.sp:2000.sp,
      //height: 2400.sp,
      padding: EdgeInsets.symmetric(vertical: 15.sp, horizontal: 50.sp),
      color: CustomColors.darkGrey.withOpacity(0.99),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          for (var i = 0; i < publications.length; i++)
            Column(
              children: [
                Gap(10.sp),
                publication(publications[i]),
              ],
            ),
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
