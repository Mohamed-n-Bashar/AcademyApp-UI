import 'package:academy/constant.dart';
import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class LoginbuttonsPush_replace extends StatelessWidget {
  const LoginbuttonsPush_replace({super.key, required this.title, required this.goScreen});
  final String title;
  final StatelessWidget goScreen;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushAndRemoveUntil(
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) => goScreen, 
              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                return SharedAxisTransition(
                  animation: animation, 
                  secondaryAnimation: secondaryAnimation, 
                  transitionType: SharedAxisTransitionType.vertical,
                  child: child,
                );
              },
            transitionDuration: const Duration(milliseconds: 700),
            // reverseTransitionDuration: const Duration(milliseconds: 500)
            ),
            (route) => false
          );
        },
        child: Text(
          title,
          style: examTitleStyle,
        ),
      ),
    );
  }
}