import 'package:academy/constant.dart';
import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class Loginbuttons extends StatelessWidget {
  const Loginbuttons({super.key, required this.title, required this.goScreen});
  final String title;
  final StatelessWidget goScreen;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
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
            reverseTransitionDuration: const Duration(milliseconds: 500),
            )
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
