import 'package:academy/constant.dart';
import 'package:academy/screen/homePage.dart';
import 'package:academy/screen/signUp/signUp.dart';
import 'package:academy/widgets/loginButtons_push_replace.dart';
import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 151, 115, 65),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 151, 115, 65),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: ListView(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              'أهلاً بك مرة أخرى',
              style: subWelcome,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 70,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'البريد الإلكتروني',
                  style: login,
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(13),
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 0),
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 0),
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'الرقم السري',
                  style: login,
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(13),
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 0),
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 0),
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                  ),
                ),
              ],
            ),
            // const SizedBox(height: 10,),
            // GestureDetector(
            //   onTap: () {

            //   },
            //   child: const Text('نسيت الرقم السري',style: smalllogin,textAlign: TextAlign.center,)),
            const SizedBox(height: 220),
            const LoginbuttonsPush_replace(
                title: 'تسجيل دخول', goScreen: homePage()),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            const Signup(),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          return SharedAxisTransition(
                            animation: animation,
                            secondaryAnimation: secondaryAnimation,
                            transitionType: SharedAxisTransitionType.vertical,
                            child: child,
                          );
                        },
                        transitionDuration: const Duration(milliseconds: 700),
                        reverseTransitionDuration:
                            const Duration(milliseconds: 500),
                        opaque: false, // عدم استخدام خلفية بيضاء افتراضية
                        barrierColor:
                            Colors.transparent, // تحديد لون خلفية شفاف
                      ),
                    );
                  },
                  child: const Text('إنشاء حساب  ',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'fonto')),
                ),
                const Text('لا تملك حساب ؟', style: smalllogin),
              ],
            )
          ],
        ),
      ),
    );
  }
}
