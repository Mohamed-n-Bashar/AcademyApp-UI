import 'package:academy/constant.dart';
import 'package:academy/model/courseIconModel.dart';
import 'package:academy/screen/exam.dart';
import 'package:academy/screen/lessons.dart';
import 'package:flutter/material.dart';

class levelScreen extends StatelessWidget {
  levelScreen({super.key, required this.levelTitle, required this.levelNumber});
  final String levelTitle;
  final int levelNumber;

  final List<CourseIconModel> courseModel = [
    CourseIconModel(
        courseImage: 'assets/images/tafsir.png', courseTitle: tafsir),
    CourseIconModel(courseImage: 'assets/images/feqh.png', courseTitle: fiqh),
    CourseIconModel(
        courseImage: 'assets/images/Hadith.png', courseTitle: hadith),
    CourseIconModel(
        courseImage: 'assets/images/sirah.png', courseTitle: seerah),
    CourseIconModel(
        courseImage: 'assets/images/tawheed.png', courseTitle: tawhid),
    CourseIconModel(
        courseImage: 'assets/images/3aqeda.png', courseTitle: aqidah),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          levelTitle,
          style: levelsTitleStyle,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) {
                                return subjectscreen(
                                    title: courseModel[index].courseTitle,
                                    image: courseModel[index].courseImage);
                              },
                            ));
                          },
                          child: Column(
                            children: [
                              Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(45.0)),
                                elevation: 5,
                                child: Image.asset(
                                  courseModel[index].courseImage,
                                  height: 90,
                                  width: 90,
                                ),
                              ),
                              Text(
                                courseModel[index].courseTitle,
                                style: subjectStyle,
                              )
                            ],
                          )),
                    ],
                  );
                },
                itemCount: courseModel.length,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return examScreen(levelNumber: levelNumber);
                  },
                ));
              },
              style: ButtonStyle(
                  minimumSize: WidgetStateProperty.all(Size.fromHeight(50))),
              child: const Text(
                exam,
                style: examTitleStyle,
              ),
            )
          ],
        ),
      ),
    );
  }
}
