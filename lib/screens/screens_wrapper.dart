import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/screens/home_Screen.dart';
import 'package:untitled1/screens/profile_Screen.dart';
import 'package:untitled1/screens/settingsScreen.dart';

class ScreenWrapper extends StatefulWidget {
  const ScreenWrapper({Key? key}) : super(key: key);

  @override
  State<ScreenWrapper> createState() => _ScreenWrapperState();
}

class _ScreenWrapperState extends State<ScreenWrapper> {
  List<Widget> screens = [
    const HomeScreen(),
    const ProfileScreen(),
    const SettingScreen(),
  ];

  int navigationIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: screens[navigationIndex],

      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.blue,
        backgroundColor: Colors.white,
        items: const [
          Icon(Icons.home_rounded, color: Colors.white,),
          Icon(Icons.person_rounded, color: Colors.white,),
          Icon(Icons.settings_rounded, color: Colors.white,),
        ],

        onTap: (index)
        {
          setState(() {
            navigationIndex = index;
          });
        },
      ),

    );
  }
}
