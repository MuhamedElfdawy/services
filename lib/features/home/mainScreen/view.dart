import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:services/main.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> slider = [
    const Scontainer(text: 'نجارة', name: 'assets/images/Carpentry.png'),
    const Scontainer(text: 'سباكة', name: 'assets/images/Plumbing.png'),
    const Scontainer(text: 'كهرباء', name: 'assets/images/electricity.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Stack(
      children: [
        Image.asset(
          'assets/images/splash.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        ListView(
          padding: const EdgeInsets.only(right: 20, left: 20),
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  height: 94,
                  width: 113,
                ),
                SizedBox(
                  height: 35.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.centerRight,
                      height: 48.h,
                      width: 290.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(45),
                      ),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.search),
                          iconSize: 30,
                          color: const Color(0xff42739B)),
                    ),
                    SizedBox(width: 11.w),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 24.r,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.add_alert_outlined),
                        color: const Color(0xff42739B),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
              ],
            ),
            Text(
              'تصنيف المشكلة',
              style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: getMyMaterialColor()),
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              height: 102,
              width: double.infinity,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children:
                      List.generate(slider.length, (index) => slider[index])),
            ),
            SizedBox(
              height: 18.h,
            ),
            Text(
              'المشاكل المنشورة',
              style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: getMyMaterialColor()),
            ),
            SizedBox(
              height: 10.h,
            ),
            Column(
              children: List.generate(6, (index) => const Pcontainer()),
            )
          ],
        )
      ],
    ));
  }
}

class Scontainer extends StatefulWidget {
  final String text;
  final String name;

  const Scontainer({
    super.key,
    required this.text,
    required this.name,
  });

  @override
  State<Scontainer> createState() => _ScontainerState();
}
class _ScontainerState extends State<Scontainer> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Center(
          child: Container(
            height: 102.h,
            width: 120.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(widget.name),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  widget.text,
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          width: 16.w,
        ),
      ],
    );
  }
}

class Pcontainer extends StatefulWidget {
  const Pcontainer({super.key});

  @override
  State<Pcontainer> createState() => _PcontainerState();
}
class _PcontainerState extends State<Pcontainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: const Color(0xff35618E),
                        radius: 24.r,
                      ),
                      SizedBox(
                        width: 13.w,
                      ),
                      Text(
                        'اسم المشكلة',
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff35618E)),
                      )
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    height: 40.h,
                    width: 55.w,
                    decoration: BoxDecoration(
                      color: const Color(0xffD6EAFF),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Image.asset('assets/images/Carpentry.png'),
                  )
                ],
              ),
              Text(
                'وصف بسيط عن المشكلة',
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff35618E)),
              ),
              TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                    Text(
                      'المزيد  >',
                      style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xff35618E)),
                    ),
                  ],),),
            ],
          ),
        ),
        SizedBox(height: 20.h,)
      ],
    );
  }
}
