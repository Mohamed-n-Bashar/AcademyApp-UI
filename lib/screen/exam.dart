import 'package:academy/constant.dart';
import 'package:academy/screen/homePage.dart';
import 'package:academy/widgets/questions_Answer.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class examScreen extends StatefulWidget {
  const examScreen({super.key, required this.levelNumber});
  final int levelNumber;
  @override
  State<examScreen> createState() => _examScreenState();
}

class _examScreenState extends State<examScreen> {
  final List questions = const [
    'نَص السؤال الأول',
    'نَص السؤال الثاني',
    'نَص السؤال الثالث',
    'نَص السؤال الرابع',
    'نَص السؤال الخامس',
    'نَص السؤال السادس',
    'نَص السؤال السابع',
    'نَص السؤال الثامن',
    'نَص السؤال التاسع',
    'نَص السؤال العاشر',
    'نَص السؤال الحادي عشر',
    'نَص السؤال الثاني عشر',
  ];

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(exam),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: ListView(
          children: [
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) => const SizedBox(
                height: 10,
              ),
              itemCount: questions.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(questions[index],
                            style: examTitleStyle,
                            textDirection: TextDirection.rtl),
                        const Divider(),
                        answers(),
                      ],
                    ),
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    switch (widget.levelNumber) {                           // 1
                      case 1:{
                        openLevel2 = true;
                        // levelState2 =true;
                        }
                        break;
                      case 2:{
                        openLevel3 = true;
                        // levelState3 =true;
                        }
                        break;
                      case 3:{
                        openLevel4 = true;
                        // levelState4 =true;
                        }
                        break;
                      default:
                    }
                    // setLeveState();                                          // 2
                    Navigator.of(context).pushAndRemoveUntil(                // 3
                      MaterialPageRoute(
                        builder: (context) {
                          return const homePage();
                        },
                      ),
                      (route) => false,
                    );
                  });
                },
                style: ButtonStyle(
                    minimumSize: WidgetStateProperty.all(Size.fromHeight(50))),
                child: const Text(sendTheExam, style: examTitleStyle),
              ),
            )
          ],
        ),
      ),
    );
  }

  bool levelState2 = false;
  bool levelState3 = false;
  bool levelState4 = false;
  void setLeveState()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('levelState2', levelState2);
    await prefs.setBool('levelState3', levelState3);
    await prefs.setBool('levelState4', levelState4);
  }
}
