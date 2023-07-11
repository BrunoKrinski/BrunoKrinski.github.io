import 'package:gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:portifolio/utils/custom_icon.dart';
import 'package:simple_icons/simple_icons.dart';
import 'package:portifolio/utils/custom_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

LayoutBuilder skillsScreen(){

  const Color iconColor = Colors.green;
  final Color iconFontColor = CustomColors.white;

  Row mainSkills() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Main\nSkills',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30.sp,
            fontWeight: FontWeight.bold,
            color: iconFontColor,
          ),
        ),
        Gap(25.sp),
        Column(
          children: [
            Icon(
              CustomIcon.image_processing,
              size: 60.sp,
              color: iconColor,
            ),
            Text(
              'Computer Vision',
              style: TextStyle(
                color: iconFontColor,
                fontSize: 25.sp,
              ),
            ),
          ],
        ),
        Gap(10.sp),
        Column(
          children: [
            Icon(
              CustomIcon.deep_learning,
              size: 60.sp,
              color: iconColor,
            ),
            Text(
              'Deep Learning',
              style: TextStyle(
                color: iconFontColor,
                fontSize: 25.sp,
              ),
            ),
          ],
        ),
        Gap(10.sp),
        Column(
          children: [
            Icon(
              CustomIcon.artificial_intelligence,
              size: 60.sp,
              color: iconColor,
            ),
            Text(
              'Artificial Intelligence',
              style: TextStyle(
                color: iconFontColor,
                fontSize: 25.sp,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Row programmingLanguages() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Programming\nLanguages',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30.sp,
            fontWeight: FontWeight.bold,
            color: iconFontColor,
          ),
        ),
        Gap(25.sp),
        Column(
          children: [
            Icon(
              SimpleIcons.python,
              size: 50.sp,
              color: iconColor,
            ),
            Gap(10.sp),
            Text(
              'Python',
              style: TextStyle(
                color: iconFontColor,
                fontSize: 25.sp,
              ),
            ),
          ],
        ),
        Gap(10.sp),
        Column(
          children: [
            Icon(
              SimpleIcons.dart,
              size: 50.sp,
              color: iconColor,
            ),
            Gap(10.sp),
            Text(
              'Dart',
              style: TextStyle(
                color: iconFontColor,
                fontSize: 25.sp,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Row imageProcessingFrameworks() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Image\nProcessing',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30.sp,
            fontWeight: FontWeight.bold,
            color: CustomColors.white,
          ),
        ),
        Gap(25.sp),
        Column(
          children: [
            Icon(
              SimpleIcons.opencv,
              size: 60.sp,
              color: iconColor,
            ),
            Text(
              'OpenCV',
              style: TextStyle(
                color: iconFontColor,
                fontSize: 25.sp,
              ),
            ),
          ],
        ),
        Gap(10.sp),
        Column(
          children: [
            Icon(
              CustomIcon.image_processing,
              size: 60.sp,
              color: iconColor,
            ),
            Text(
              'Scikit Image',
              style: TextStyle(
                color: iconFontColor,
                fontSize: 25.sp,
              ),
            ),
          ],
        ),
        Gap(25.sp),
        Column(
          children: [
            Icon(
              CustomIcon.image_processing,
              size: 60.sp,
              color: iconColor,
            ),
            Text(
              'Pillow',
              style: TextStyle(
                color: iconFontColor,
                fontSize: 25.sp,
              ),
            ),
          ],
        ),
        Gap(25.sp),
        Column(
          children: [
            Icon(
              CustomIcon.image_processing,
              size: 60.sp,
              color: iconColor,
            ),
            Text(
              'Albumentations',
              style: TextStyle(
                color: iconFontColor,
                fontSize: 25.sp,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Row machineLearningFrameworks() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Machine\nLearning',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30.sp,
            fontWeight: FontWeight.bold,
            color: CustomColors.white,
          ),
        ),
        Gap(25.sp),
        Column(
          children: [
            Icon(
              SimpleIcons.scikitlearn,
              size: 60.sp,
              color: iconColor,
            ),
            Text(
              'Scikit Learn',
              style: TextStyle(
                color: iconFontColor,
                fontSize: 25.sp,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Row deepLearningFrameworks() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Deep\nLearning',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30.sp,
            fontWeight: FontWeight.bold,
            color: iconFontColor,
          ),
        ),
        Gap(25.sp),
        Column(
          children: [
            Icon(
              SimpleIcons.pytorch,
              size: 50.sp,
              color: iconColor,
            ),
            Gap(10.sp),
            Text(
              'PyTorch',
              style: TextStyle(
                color: iconFontColor,
                fontSize: 25.sp,
              ),
            ),
          ],
        ),
        Gap(10.sp),
        Column(
          children: [
            Icon(
              SimpleIcons.keras,
              size: 50.sp,
              color: iconColor,
            ),
            Gap(10.sp),
            Text(
              'Keras',
              style: TextStyle(
                color: iconFontColor,
                fontSize: 25.sp,
              ),
            ),
          ],
        ),
        Gap(10.sp),
        Column(
          children: [
            Icon(
              SimpleIcons.tensorflow,
              size: 50.sp,
              color: iconColor,
            ),
            Gap(10.sp),
            Text(
              'TensorFlow',
              style: TextStyle(
                color: iconFontColor,
                fontSize: 25.sp,
              ),
            ),
          ],
        ),
        Gap(10.sp),
        Column(
          children: [
            Icon(
              CustomIcon.deep_learning,
              size: 50.sp,
              color: iconColor,
            ),
            Gap(10.sp),
            Text(
              'MMDetection',
              style: TextStyle(
                color: iconFontColor,
                fontSize: 25.sp,
              ),
            ),
          ],
        ),
        Gap(10.sp),
        Column(
          children: [
            Icon(
              CustomIcon.deep_learning,
              size: 50.sp,
              color: iconColor,
            ),
            Gap(10.sp),
            Text(
              'HuggingFace',
              style: TextStyle(
                color: iconFontColor,
                fontSize: 25.sp,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Row numericalComputingFrameworks() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Numerical\nComputing',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30.sp,
            fontWeight: FontWeight.bold,
            color: iconFontColor,
          ),
        ),
        Gap(25.sp),
        Column(
          children: [
            Icon(
              SimpleIcons.scipy,
              size: 50.sp,
              color: iconColor,
            ),
            Gap(10.sp),
            Text(
              'SciPy',
              style: TextStyle(
                color: iconFontColor,
                fontSize: 25.sp,
              ),
            ),
          ],
        ),
        Gap(10.sp),
        Column(
          children: [
            Icon(
              SimpleIcons.numpy,
              size: 50.sp,
              color: iconColor,
            ),
            Gap(10.sp),
            Text(
              'NumPy',
              style: TextStyle(
                color: iconFontColor,
                fontSize: 25.sp,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Row developmentFrameworks() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Web\nMobile\nDesktop',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30.sp,
            fontWeight: FontWeight.bold,
            color: iconFontColor,
          ),
        ),
        Gap(25.sp),
        Column(
          children: [
            Icon(
              SimpleIcons.flutter,
              size: 50.sp,
              color: iconColor,
            ),
            Gap(10.sp),
            Text(
              'Flutter',
              style: TextStyle(
                color: iconFontColor,
                fontSize: 25.sp,
              ),
            ),
          ],
        ),
        Gap(25.sp),
        Column(
          children: [
            Icon(
              SimpleIcons.python,
              size: 50.sp,
              color: iconColor,
            ),
            Gap(10.sp),
            Text(
              'Flet',
              style: TextStyle(
                color: iconFontColor,
                fontSize: 25.sp,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Row databases() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Databases',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30.sp,
            fontWeight: FontWeight.bold,
            color: iconFontColor,
          ),
        ),
        Gap(25.sp),
        Column(
          children: [
            Icon(
              SimpleIcons.firebase,
              size: 50.sp,
              color: iconColor,
            ),
            Gap(10.sp),
            Text(
              'Firebase',
              style: TextStyle(
                color: iconFontColor,
                fontSize: 25.sp,
              ),
            ),
          ],
        ),
        Gap(25.sp),
        Column(
          children: [
            Icon(
              CustomIcon.database,
              size: 50.sp,
              color: iconColor,
            ),
            Gap(10.sp),
            Text(
              'Hive',
              style: TextStyle(
                color: iconFontColor,
                fontSize: 25.sp,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Container largeLayout() {
    return Container(
      height: 600.sp,
      padding: EdgeInsets.symmetric(vertical: 25.sp, horizontal: 50.sp),
      color: CustomColors.darkGrey.withOpacity(0.95),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              mainSkills(),
            ],
          ),
          Gap(25.sp),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              programmingLanguages(),
              Gap(50.sp),
              imageProcessingFrameworks(),
            ],
          ),
          Gap(25.sp),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              machineLearningFrameworks(),
              Gap(50.sp),
              deepLearningFrameworks(),
            ],
          ),
          Gap(25.sp),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              numericalComputingFrameworks(),
              Gap(50.sp),
              developmentFrameworks(),
              Gap(50.sp),
              databases(),
            ],
          ),
        ],
      ),
    );
  }

  Container smallLayout() {
    return Container(
      height: 600.sp,
      padding: EdgeInsets.symmetric(vertical: 25.sp, horizontal: 50.sp),
      color: CustomColors.darkGrey.withOpacity(0.95),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        ],
      ),
    );
  }
  
  return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {/*
        if (constraints.maxWidth < 900) {
          return smallLayout();
        }*/
        return largeLayout();
      });
}