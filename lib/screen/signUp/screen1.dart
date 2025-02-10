import 'package:academy/constant.dart';
import 'package:academy/screen/signUp/login.dart';
import 'package:academy/screen/signUp/signUp.dart';
import 'package:academy/widgets/loginButtons_push.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 151, 115, 65),
      body: Padding(
        padding: const EdgeInsets.only(left: 50, right: 50),
        child: ListView(
          children: [
            const SizedBox(height: 60),
            const Text(
              '!!  مرحبا',
              style: welcome,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 5,),
            const FittedBox(
                child: Text(
              'أهلا بك في أكاديمية تعلم',
              style: subWelcome,
            )),
            const SizedBox(height: 30,),
            Image.asset('assets/images/login.png'),
            const SizedBox(
              height: 40,
            ),
            const Loginbuttons(title: 'تسجيل دخول', goScreen: Login()),
            const SizedBox(
              height: 15,
            ),
            const Loginbuttons(title: 'إنشاء حساب', goScreen: Signup()),
            const SizedBox(
              height: 70,
            ),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: () {},
                      child: SizedBox(
                        height: 18,
                        width: 18,
                        child: FittedBox(
                            child: Image.asset('assets/images/facebook.png',
                                color: Colors.white)),
                      )),
                  const SizedBox(
                    width: 25,
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: SizedBox(
                        height: 22,
                        width: 22,
                        child: FittedBox(
                            child: Image.asset('assets/images/youtube.png',
                                color: Colors.white)),
                      )),
                  const SizedBox(
                    width: 25,
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: SizedBox(
                        height: 18,
                        width: 18,
                        child: FittedBox(
                            child: Image.asset(
                          'assets/images/telegram.png',
                          color: Colors.white,
                        )),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
