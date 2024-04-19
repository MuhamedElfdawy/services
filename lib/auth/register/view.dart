import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:services/auth/login/view.dart';
import 'package:services/auth/register/controller.dart';
import 'package:services/design/app_Button.dart';
import 'package:services/main.dart';

import '../../design/app_input.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  // final firstNameController = TextEditingController();
  // final lastNameController = TextEditingController();
  // final emailController = TextEditingController();
  // final phoneController = TextEditingController();
  // final passwordController = TextEditingController();
  // final cityController = TextEditingController();
  // final governorateController = TextEditingController();
  // final factorJobController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpassController = TextEditingController();
  final emailController = TextEditingController();

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
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      height: 94,
                      width: 113,
                    ),
                    SizedBox(
                      height: 7.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 48.h,
                          width: 48.w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16)
                          ),
                          child: IconButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> const Login()));
                          }, icon: Icon(Icons.navigate_before,size: 35.sp,)),
                        ),
                        SizedBox(width: 80.w,),
                        Center(
                          child: Text(
                            'إنشاء حساب',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: getMyMaterialColor()),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'الاسم الاول',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.normal,
                        color: getMyMaterialColor(),
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                      AppInput(
                       controller: usernameController,
                         hintText: 'مثال : محمد'
                     ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      'الاسم الاخير',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.normal,
                        color: getMyMaterialColor(),
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                      AppInput(
                       controller: null,
                         hintText: 'مثال : جمال'
                     ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      'المحافظة',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.normal,
                        color: getMyMaterialColor(),
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                      AppInput(
                       controller: null,
                         hintText: 'مثال : الدقهلية'
                     ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      'المدينة',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.normal,
                        color: getMyMaterialColor(),
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                      AppInput(
                       controller: null,
                         hintText: 'مثال : المنصورة'
                     ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      'المهنة',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.normal,
                        color: getMyMaterialColor(),
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                      AppInput(
                       controller: null,
                         hintText: 'مثال : سباك'
                     ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      'البريد الالكتروني/رقم التليفون',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: getMyMaterialColor(),
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                      AppInput(
                       controller: emailController,
                         hintText: 'مثال : mo@gmail.com'
                     ),
                    SizedBox(
                      height: 16.h,
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
                      height: 10.h,
                    ),
                      AppInput(
                       controller: passwordController,
                      hintText: '********',
                      isPassword: true,
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      'تأكيد كلمة المرور',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.normal,
                        color: getMyMaterialColor(),
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                      AppInput(
                       controller: confirmpassController,
                      hintText: '********',
                      isPassword: true,
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    /*
                    Text(
                      'تاريخ الميلاد',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.normal,
                        color: getMyMaterialColor(),
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const AppInput(
                      hintText: 'التاريخ',
                      isSuffixIcon: true,
                    ),
                     */
                    AppButton(onPressed: () async {
                      final controller = RegisterController();
                       await controller.sendData(
                          // firstNameController.text,
                          // lastNameController.text,
                          emailController.text,
                          // phoneController.text,
                         passwordController.text,
                           confirmpassController.text,
                          usernameController.text
                          // cityController.text,
                          // governorateController.text,
                          // factorJobController.text,

                      );
                    },
                      text: 'انشاء', bottomPadding: 10, topPadding: 32),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('انا امتلك حساب',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.normal),),
                        TextButton(onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Login()),);
                        }, child: Text('تسجيل الدخول',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.normal,color: getMyMaterialColor()),),),
                      ],
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

