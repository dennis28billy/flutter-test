import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sma_dennis/cubit/page_cubit.dart';
import 'package:sma_dennis/ui/pages/about_page.dart';
import 'package:sma_dennis/ui/pages/home_page.dart';
import 'package:sma_dennis/ui/pages/setting_page.dart';
import 'package:sma_dennis/ui/widgets/custom_bottom_navigation_item.dart';
import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch(currentIndex){
        case 0:
          return HomePage();
        case 1:
          return AboutPage();
        case 2:
          return SettingPage();
        default:
          return HomePage();
      }
    }

    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
              bottom: 30, left: defaultMargin, right: defaultMargin),
          decoration: BoxDecoration(
              color: kWhiteColor, borderRadius: BorderRadius.circular(18)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomBottomNavigationItem(
                index: 0,
                imageUrl: 'assets/icon_homepage.png',
              ),
              CustomBottomNavigationItem(
                index: 1, 
                imageUrl: 'assets/icon_about.png'
              ),
              CustomBottomNavigationItem(
                index: 2, 
                imageUrl: 'assets/icon_settings.png'
              ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
            backgroundColor: kBackgroundColor,
            body: Stack(
              children: [
                buildContent(currentIndex),
                customBottomNavigation(),
              ],
            ));
      },
    );
  }
}
