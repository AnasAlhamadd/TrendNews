import 'package:flutter/material.dart';
import 'package:untitled4/Feature/news/prisintaion/views/widgets/list_bottom_nav_bar.dart';
import 'package:untitled4/core/utils/app_color.dart';
import 'package:untitled4/core/utils/app_styles.dart';
import 'package:untitled4/core/utils/constant.dart';
import 'package:untitled4/core/widgets/list_widgets_app.dart';

class NewsBody extends StatefulWidget {
  const NewsBody({super.key});

  @override
  State<NewsBody> createState() => _NewsBodyState();
}

class _NewsBodyState extends State<NewsBody> {
  int curentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: bottomNavigationBarItems,
          unselectedItemColor: Colors.grey[600],
          selectedItemColor: Appcolor.kRadiusColor,
          selectedIconTheme: const IconThemeData(
            color: Appcolor.kRadiusColor,
          ),
          currentIndex: curentindex,
          onTap: (index) {
            curentindex = index;
            setState(() {});
          },
          selectedLabelStyle: AppTextStyles.style15.copyWith(
            fontFamily: kFontFamilyRobotoSlab,
          ),
          selectedFontSize: 15.0,
        ),
        body: listwidget[curentindex]);
  }
}

// import 'package:flutter/material.dart';
// import 'package:untitled4/core/widgets/custom_loadin_explore_shimmer.dart';

// class NewsBody extends StatelessWidget {
//   const NewsBody({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(body: const CustomLoadinExploreShimmer());
//   }
// }
