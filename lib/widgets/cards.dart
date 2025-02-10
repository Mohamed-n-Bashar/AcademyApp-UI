import 'package:academy/constant.dart';
import 'package:academy/screen/subjects.dart';
import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  const Cards({super.key, required this.level, required this.openLevel, required this.levelNumber});
  final String level;
  final bool openLevel;
  final int levelNumber;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(15),
      onTap: () {
        return openLevel 
        ? Navigator.of(context).push(MaterialPageRoute(builder: (context) => levelScreen(levelTitle: level, levelNumber: levelNumber,)))
        : print('');
      },
      leading: openLevel
      ? null
      : const Icon(Icons.lock_outline_rounded),
      trailing: Text(level, style: cardTitleStyle,),
    );
  }
}