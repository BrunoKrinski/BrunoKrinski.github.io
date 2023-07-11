import 'package:flutter/material.dart';
import 'package:portifolio/screens/aboutme_screen.dart';
import 'package:portifolio/screens/projects_screen.dart';
import 'package:portifolio/utils/custom_colors.dart';
import 'package:portifolio/screens/skills_screen.dart';
import 'package:portifolio/screens/education_screen.dart';
import 'package:portifolio/screens/experience_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portifolio/screens/publications_screen.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

void main() {
  runApp(const Portifolio());
}

class Portifolio extends StatelessWidget {
  const Portifolio({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1366, 720),
      builder: (context, child) {
        return MaterialApp(
          home: child,
          title: 'Bruno Alexandre Krinski',
          debugShowCheckedModeBanner: false,
        );
      },
      child: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _screenIndex = 0;
  final Duration _time = const Duration(seconds: 1);

  final ItemScrollController itemScrollController = ItemScrollController();
  final ScrollOffsetController scrollOffsetController = ScrollOffsetController();
  final ScrollOffsetListener scrollOffsetListener = ScrollOffsetListener.create();
  final ItemPositionsListener itemPositionsListener = ItemPositionsListener.create();

  final List<LayoutBuilder> _screens = [
    aboutMeScreen(),
    skillsScreen(),
    educationScreen(),
    experienceScreen(),
    publicationsScreen(),
    projectsScreen(),
  ];

  TextButton _navigationButton(String text, int index) {
    return TextButton(
      onPressed: () {
        setState(() {
          _screenIndex = index;
        });
        itemScrollController.scrollTo(index: index, duration: _time, curve: Curves.easeInOutCubic);
      },
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all(Size(200.sp, 75.sp)),
        overlayColor: MaterialStateProperty.all(Colors.transparent),
        backgroundColor: _screenIndex == index
            ? MaterialStateProperty.all(CustomColors.grey.withOpacity(0.2))
            : MaterialStateProperty.all(CustomColors.darkGrey),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 25.sp,
          color: Colors.green,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75.sp,
        backgroundColor: CustomColors.darkGrey,
        title: Container(
          padding: EdgeInsets.symmetric(vertical: 10.sp, horizontal: 10.sp),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _navigationButton('About Me', 0),
              _navigationButton('Skills', 1),
              _navigationButton('Education', 2),
              _navigationButton('Experience', 3),
              _navigationButton('Publications', 4),
              _navigationButton('Projects', 5),
            ],
          ),
        ),
      ),
      body: ScrollablePositionedList.builder(
        itemCount: _screens.length,
        itemBuilder: (context, index) => _screens[index],
        itemScrollController: itemScrollController,
        scrollOffsetController: scrollOffsetController,
        itemPositionsListener: itemPositionsListener,
        scrollOffsetListener: scrollOffsetListener,
      ),
    );
  }
}