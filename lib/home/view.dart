import 'package:flutter/material.dart';
import 'package:services/home/mainScreen/view.dart';
import 'package:services/home/myAccount/view.dart';
import 'package:services/home/phoneBook/view.dart';
import 'package:services/home/record/view.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  List<Widget> pages = [
    const MainScreen(),
    const RecordScreen(),
    const PhoneBook(),
    const MyAccount()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: currentIndex,
              fixedColor: const Color(0xff42739B),
              elevation: 0,
              iconSize: 26,
              onTap: (value) {
                currentIndex = value;
                setState(() {});
              },
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home),label: 'الرئيسية'),
                BottomNavigationBarItem(icon: Icon(Icons.access_time_outlined),label: 'السجل'),
                BottomNavigationBarItem(icon: Icon(Icons.contact_phone_outlined),label: 'دليل الهاتف'),
                BottomNavigationBarItem(icon: Icon(Icons.person_outline_outlined),label: 'حسابي'),
              ]
          ),
          body: pages[currentIndex],
        )
    );
  }
}