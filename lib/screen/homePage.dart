import 'package:academy/constant.dart';
import 'package:academy/widgets/cardStructure.dart';
import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 183, 147, 95),                 // background color
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: AppBar(
            title: const Padding(
              padding: EdgeInsets.only(top: 25),
              child: Text(
                appBarTitle,
                style: titleStyle,
              ),
            ),
            centerTitle: true,
            backgroundColor: const Color.fromARGB(255, 183, 147, 95),             // appbar color
          )),
      body: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(40))),
        child: Padding(
          padding: const EdgeInsets.only(top: 25, right: 20, left: 20),
          child: Column(
            children: [
              const SizedBox(height: 30),
              const Cardstructure(level: level1, openLevel: openLevel1, levelNumber: 1),
              
              const SizedBox(height: 20),
              Cardstructure(level: level2,openLevel: openLevel2,levelNumber: 2),
              
              const SizedBox(height: 20),
              Cardstructure(level: level3,openLevel: openLevel3,levelNumber: 3),

              const SizedBox(height: 20),
              Cardstructure(level: level4,openLevel: openLevel4,levelNumber: 4),
    
              const Expanded(
                  child: SizedBox()),
              const Padding(
                padding: EdgeInsets.only(left: 40, right: 40, bottom: 30),
                child: FittedBox(
                    child: Text(
                  appBarSubtitle,
                  style: subtitleStyle,
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}