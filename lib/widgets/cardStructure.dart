import 'package:academy/widgets/cards.dart';
import 'package:flutter/material.dart';

class Cardstructure extends StatelessWidget {
  const Cardstructure({super.key, required this.level, required this.openLevel,required this.levelNumber });
  final String level ;
  final bool openLevel;
  final int levelNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 240, 212, 173),
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 99, 61, 46),          // لون الظل مع درجة الشفافية
              spreadRadius: 0,                // مدى انتشار الظل
              blurRadius: 2,                  // مدى ضبابية الظل
              offset: Offset(0, 1),           // تحديد اتجاه الظل (x,y)
            )
          ]),
      child: Cards(
        level: level,
        openLevel: openLevel,
        levelNumber: levelNumber
      ),
    );
  }
}
