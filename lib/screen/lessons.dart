import 'package:academy/constant.dart';
import 'package:academy/screen/everylesson.dart';
import 'package:flutter/material.dart';

class subjectscreen extends StatelessWidget {
  const subjectscreen({super.key, required this.title, required this.image});
  final String title ;
  final String image ;
  final List lessons = const [
    'الدرس الأول',
    'الدرس الثاني',
    'الدرس الثالث',
    'الدرس الرابع',
    'الدرس الخامس',
    'الدرس السادس',
    'الدرس السابع',
    'الدرس الثامن',
    'الدرس التاسع',
    'الدرس العاشر',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title,style: levelsTitleStyle,),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
              child: Card(
                child: ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Everylesson(lessonTitle: lessons[index],)));
                  },
                  minTileHeight: 80,
                  trailing: Text(lessons[index],style: examTitleStyle,),
                  leading: Image.asset(image),
                ),
              ),
            );
          }, 
          itemCount: lessons.length),
      )
    );
  }
}