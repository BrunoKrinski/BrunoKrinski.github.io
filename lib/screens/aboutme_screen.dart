import 'package:gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:simple_icons/simple_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portifolio/utils/custom_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

LayoutBuilder aboutMeScreen() {

  final Color iconColor = Colors.green;

  Column avatar() {
    final Uri githubUrl = Uri.parse("https://github.com/BrunoKrinski");
    final Uri researchGateUrl =
        Uri.parse("https://www.researchgate.net/profile/Bruno-Krinski");
    final Uri scholarUrl = Uri.parse(
        "https://scholar.google.com/citations?user=O7CoYGwAAAAJ&hl=en");
    final Uri linkedinUrl = Uri.parse(
        "https://www.linkedin.com/in/bruno-alexandre-krinski-045907141/");
    const String avatarUrl =
        "https://avatars.githubusercontent.com/u/45493922?s=400&u=55429b217e0ea15967f3c9d06671ac0ded6ef770&v=4";

    return Column(
      children: [
        CircleAvatar(
          radius: 150.sp,
          backgroundImage: const NetworkImage(avatarUrl),
        ),
        Gap(10.sp),
        Column(
          children: [
            Text(
              "Machine Learning Researcher\nFlutter Developer",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.sp, color: CustomColors.white),
            ),
          ],
        ),
        Gap(10.sp),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              color: iconColor,
              iconSize: 50.sp,
              //splashRadius: iconSplashRadius,
              icon: const Icon(SimpleIcons.github),
              onPressed: () {
                launchUrl(githubUrl);
              },
            ),
            IconButton(
              color: iconColor,
              iconSize: 50.sp,
              //splashRadius: iconSplashRadius,
              icon: const Icon(SimpleIcons.linkedin),
              onPressed: () {
                launchUrl(linkedinUrl);
              },
            ),
            IconButton(
              color: iconColor,
              iconSize: 50.sp,
              //splashRadius: iconSplashRadius,
              icon: const Icon(SimpleIcons.googlescholar),
              onPressed: () {
                launchUrl(scholarUrl);
              },
            ),
            IconButton(
              color: iconColor,
              iconSize: 50.sp,
              //splashRadius: iconSplashRadius,
              icon: const Icon(SimpleIcons.researchgate),
              onPressed: () {
                launchUrl(researchGateUrl);
              },
            ),
          ],
        ),
      ],
    );
  }

  Text interest(String text) {
    return Text(
      text,
      style: TextStyle(fontSize: 25.sp, color: CustomColors.white),
    );
  }

  Container circleMarker() {
    return Container(
      height: 10.sp,
      width: 10.sp,
      decoration: BoxDecoration(
        color: CustomColors.white,
        borderRadius: BorderRadius.circular(15.sp),
      ),
    );
  }

  Flexible description() {
    const String descriptionText = "Bruno Alexandre Krinski is an accomplished "
        "Computer Scientist with a Bachelor's and Master's degree from the Federal "
        "Universityof Paraná (UFPR). Currently in the final year of his PhD, "
        "he specializes in Computer Vision, Deep Learning, and Artificial "
        "Intelligence. His research has focused on applying these concepts to "
        "solve challenging problems such as Visual Salience and the segmentation"
        " of Covid-19 Computed Tomography scans. He also enjoys developing "
        "captivating Flutter applications that blend technology and aesthetics "
        "seamlessly.";
    return Flexible(
      child: Column(
        children: [
          Text(
            'Bruno Alexandre Krinski',
            style: TextStyle(
              fontSize: 50.sp,
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
            ),
          ),
          Gap(10.sp),
          Text(
            descriptionText,
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 25.sp,
              color: CustomColors.white,
            ),
          ),
          Gap(10.sp),
          Text(
            'Main Interests',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 50.sp,
              color: Colors.blueAccent,
            ),
          ),
          Gap(10.sp),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              interest('Computer Vision'),
              Gap(10.sp),
              circleMarker(),
              Gap(10.sp),
              interest('Deep Learning'),
              Gap(10.sp),
              circleMarker(),
              Gap(10.sp),
              interest('Artificial Inteligence'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              interest('Image Classification'),
              Gap(10.sp),
              circleMarker(),
              Gap(10.sp),
              interest('Object Detection'),
              Gap(10.sp),
              circleMarker(),
              Gap(10.sp),
              interest('Semantic/Instance Segmentation'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              interest('Generative Networks'),
              Gap(10.sp),
              circleMarker(),
              Gap(10.sp),
              interest('Stable Diffusion'),
              Gap(10.sp),
              circleMarker(),
              Gap(10.sp),
              interest('Data Augmentation'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              interest('Web/Mobile/Desktop Development'),
            ],
          ),
        ],
      ),
    );
  }

  Container largeLayout() {
    return Container(
      height: 600.sp,
      padding: EdgeInsets.symmetric(vertical: 25.sp, horizontal: 50.sp),
      color: CustomColors.darkGrey.withOpacity(0.99),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          avatar(),
          Gap(25.sp),
          description(),
        ],
      ),
    );
  }

  Container smallLayout() {
    return Container(
      height: 1000.sp,
      padding: EdgeInsets.symmetric(vertical: 25.sp, horizontal: 50.sp),
      color: CustomColors.darkGrey.withOpacity(0.99),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          avatar(),
          Gap(25.sp),
          description(),
        ],
      ),
    );
  }

  return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {

    if (constraints.maxWidth < 900) {
      return smallLayout();
    }
    return largeLayout();
  });
}
