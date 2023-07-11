import 'package:gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:portifolio/utils/custom_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

LayoutBuilder experienceScreen() {

  List<String> phdExperinces = [
    "COVID-19-Induced Lesion Detection in Thoracic Computed Tomography Scans (CT-Scans) using Semantic Segmentation.",
    "Study, application and development of data augmentation techniques to improve the COVID-19 CT-Scan segmentation.",
    "Study and application of generative networks to increase CT-Scan data of patients infected with COVID-19.",
    "Evaluation of 120 Encoder-Docoder architectures in the COVID-19 CT-Scan segmentation.",
    "Evaluation of new unified datasets training methodology in the COVID-19 CT-Scan segmentation problem.",
    "Application of OpenCV and Albumentations libraries for Image Processing and data augmentation during Training, alongside PyTorch library for Deep Learning architectures' training and evaluation.",
  ];

  List<String> mscExperiences = [
    "Semantic segmentation of Visual Saliences (features of objects and regions of the image that stand out and attract the attention of the human brain).",
    "Deep study of models such as: Fully Convolutional Network (FCN) and Mask-RCNN.",
    "Study and application of Generative Adversarial Networks (GANs) for data augmentation in the Visual Salience segmentation problem.",
    "Use of OpenCV for Image processing and Computer Vision.",
    "Use of Scikit-Learn for Machine Learning applications.",
    "Use of TensorFlow for Deep Learning Semantic Segmentation.",
  ];

  List<String> icExperiences = [
    "Identification and classification of buildings using classic Computer Vision features extraction techniques (SIFT, SURF and ORB)",
    "Android development with Java",
    "Use of OpenCV for Image processing and Computer Vision on Android applications.",
  ];

  Container circleMarker() {
    return Container(
      height: 5.sp,
      width: 5.sp,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(15.sp),
      ),
    );
  }

  Column experiences(List<String> experiencesList) {
    return Column(
      children: [
        for(var i = 0; i < experiencesList.length; i++)
          Column(
            children: [
              Gap(10.sp),
              Row(
                children: [
                  Gap(10.sp),
                  circleMarker(),
                  Gap(10.sp),
                  Expanded(child: Text(experiencesList[i], style: TextStyle(
                    fontSize: 20.sp, color: CustomColors.white,
                  ),)),
                ],
              ),
            ],
          )
      ],
    );
  }

  TextStyle formationStyle() {
    return TextStyle(
      color: CustomColors.white,
      fontWeight: FontWeight.bold,
      fontSize: 25.sp,
    );
  }

  TextStyle universityStyle() {
    return TextStyle(
      color: Colors.green,
      fontSize: 20.sp,
    );
  }

  TextStyle localStyle() {
    return TextStyle(
      color: Colors.green,
      fontSize: 20.sp,
    );
  }

  TextStyle periodStyle() {
    return TextStyle(
      color: CustomColors.white,
      fontSize: 20.sp,
    );
  }

  Column formation(String formation, String university, String local, String init, String end) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(formation, style: formationStyle()),
            Gap(5.sp),
            Text(' - ', style: TextStyle(fontSize: 15.sp, color: CustomColors.white),),
            Gap(5.sp),
            Text('$init - $end', style: periodStyle()),
          ],
        ),
        Row(
          children: [
            Text(university, style: universityStyle()),
            Gap(10.sp),
            Text(local, style: localStyle()),
          ],
        ),
      ],
    );
  }

  Container smallLayout() {
    return Container();
  }

  Container largeLayout() {
    return Container(
      height: 900.sp,
      padding: EdgeInsets.symmetric(vertical: 25.sp, horizontal: 50.sp),
      color: CustomColors.darkGrey.withOpacity(0.85),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          formation('PhD in Computer Science',
              'Federal University of Paraná (UFPR)',
              'Curitiba, Paraná - Brazil',
              'October - 2019', 'Ongoing'),
          experiences(phdExperinces),
          Gap(25.sp),
          formation('MsC in Computer Science',
              'Federal University of Paraná (UFPR)',
              'Curitiba, Paraná - Brazil',
              'January - 2017', 'August - 2019'),
          experiences(mscExperiences),
          Gap(25.sp),
          formation('Bachelor in Computer Science - Scientific Research',
              'Federal University of Paraná (UFPR)',
              'Curitiba, Paraná - Brazil',
              'February - 2015', 'December - 2016'),
          experiences(icExperiences),
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