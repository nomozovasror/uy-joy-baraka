// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uy_joy_baraka/pages/ad.dart';
import 'package:uy_joy_baraka/pages/chat.dart';
import 'package:uy_joy_baraka/pages/home.dart';
import 'package:uy_joy_baraka/pages/profile.dart';
import 'package:uy_joy_baraka/pages/saved.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;

  List pagesList = [
    HomeScreen(),
    SavedScreen(),
    AddAdScreen(),
    ChatScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Image.asset('assets/images/logo.png', height: 40),
            backgroundColor: const Color(0xff008B51),
            centerTitle: true,
          ),
          body: pagesList[currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: const Color(0xffFF8D08),
            unselectedItemColor: const Color(0xff130F26),
            selectedFontSize: 10,
            unselectedFontSize: 10,
            iconSize: 24,
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/tabler_category.svg',
                  color: currentIndex == 0
                      ? const Color(0xffFF8D08)
                      : const Color(0xff130F26),
                ),
                label: 'Menu',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/mdi_heart-outline.svg',
                  color: currentIndex == 1
                      ? const Color(0xffFF8D08)
                      : const Color(0xff130F26),
                ),
                label: 'Saqlanganlar',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/mdi_plus-outline.svg',
                  color: currentIndex == 2
                      ? const Color(0xffFF8D08)
                      : const Color(0xff130F26),
                ),
                label: 'E\'lon qo\'shish',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/majesticons_chat-line.svg',
                  color: currentIndex == 3
                      ? const Color(0xffFF8D08)
                      : const Color(0xff130F26),
                ),
                label: 'Chat',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/solar_user-outline.svg',
                  color: currentIndex == 4
                      ? const Color(0xffFF8D08)
                      : const Color(0xff130F26),
                ),
                label: 'Profil',
              ),
            ],
          )),
    );
  }
}
