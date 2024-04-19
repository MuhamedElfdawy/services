import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:services/auth/login/controller.dart';
import 'package:services/auth/register/view.dart';
import 'package:services/design/app_Button.dart';
import 'package:services/design/app_input.dart';
import 'package:services/main.dart';

class Login extends StatefulWidget {
   const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isLoading = false;
  final emailController = TextEditingController();
  final passowrdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    height: 94,
                    width: 113,
                  ),
                  SizedBox(
                    height: 7.h,
                  ),
                  Text(
                    'تسجيل الدخول',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: getMyMaterialColor()),
                  ),
                  SizedBox(
                    height: 45.h,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'البريد الالكتروني/رقم التليفون',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: getMyMaterialColor(),
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                   AppInput(
                    controller: emailController,
                      hintText: 'مثال : mo@gmail.com',
                      ),
                  SizedBox(
                    height: 13.h,
                  ),
                  Text(
                    'كلمة المرور',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.normal,
                      color: getMyMaterialColor(),
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                   AppInput(
                    controller: passowrdController,
                    hintText: '********',
                    isPassword: true,
                  ),
                  AppButton(
                          onPressed: () async {
                            var msg;
                            final controller = LoginController();
                            msg = await controller.sendData(phone: emailController.text, password: passowrdController.text);

                            print(msg);
                            // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            //   content:  Center(child: Text(msg)),
                            //   backgroundColor: getMyMaterialColor(),
                            //   duration: const Duration(seconds: 1),
                            // ));
                          },
                          text: 'تسجيل ',
                          topPadding: 24,
                          bottomPadding: 36),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 2.h,
                        width: 145.w,
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Color(0xff224A6B), Colors.white],
                                begin: AlignmentDirectional.topStart,
                                end: AlignmentDirectional.topEnd),
                          ),
                        ),
                      ),
                      Text('أو',
                          style: TextStyle(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                      SizedBox(
                        height: 2.h,
                        width: 145.w,
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Colors.white, Color(0xff224A6B)],
                                begin: AlignmentDirectional.topStart,
                                end: AlignmentDirectional.topEnd),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Mcontainer(
                        text: 'google',
                        name: 'google.png',
                      ),
                      Mcontainer(
                        text: 'facebook',
                        name: 'facebook.png',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 26.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'انا لا امتلك حساب',
                        style: TextStyle(
                            fontSize: 16.sp, fontWeight: FontWeight.normal),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>  const Register()));
                        },
                        child: Text(
                          'إنشاء حساب',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: getMyMaterialColor()),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ],
      )),
    );
  }
}

class Mcontainer extends StatelessWidget {
  final String text, name;

  const Mcontainer({super.key, required this.text, required this.name});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 67.h,
        width: 160.w,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(16),
            ),
            border:
                Border.fromBorderSide(BorderSide(color: getMyMaterialColor()))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              text,
              style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  color: getMyMaterialColor()),
            ),
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                border: Border.fromBorderSide(
                    BorderSide(color: getMyMaterialColor())),
                shape: BoxShape.circle,
              ),
              child: Image.asset('assets/images/$name'),
            )
          ],
        ),
      ),
    );
  }
}


