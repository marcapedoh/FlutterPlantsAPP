import 'package:flutter/material.dart';
import 'package:untitled/pages/home_page.dart';

import '../pages/splash_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  PageController pageController= PageController();
  int selectIndex=0;
  List<Widget> child = [
    HomePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:PageView.builder(
          itemCount: child.length,
          controller: pageController,
          onPageChanged: (value)=> setState(() => selectIndex=value),
          itemBuilder: (itemBuilder, index){
            return Container(
              child: child[index],
            );
          }
    )
    );
  }
}
