import 'package:flutter/material.dart';
import 'package:samskritam/common/widgets/custom_button.dart';
import 'package:samskritam/common/widgets/loading_screen.dart';

class LessonAksharaTable extends StatelessWidget {
  const LessonAksharaTable({super.key, this.lessonData, this.crossAxisCount, this.nextQuestion});
  final Map<dynamic, dynamic>? lessonData;
  final Function()? nextQuestion;
  final int? crossAxisCount;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          
          child: Text(lessonData![0]?["text"], style: const TextStyle(
            fontSize: 40
          ),),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(8, 8, 8, 32),
          child: Image.network(lessonData![0]?["image"]),
        ),
        Expanded(
          child: GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: crossAxisCount??5),
              itemCount: (lessonData?.length == null)? 1 : lessonData!.length - 1,
              itemBuilder: (context, i) {
                if (lessonData == null) {
                  return const LoadingScreen();
                }
                return Container(
                  margin: const EdgeInsets.all(4),
                  // color: Colors.red,
                  // child: Text(lessonData![i+1].toString()),
                  child: Center(
                    // child: Text(lessonData![i+1]["text"]),
                    child: myElevatedButton(
                      onPressed: () {},
                      text: lessonData![i + 1]["text"],
                      context: context,
                      fontSize: 24
                    ),
                  ),
                );
              }),
        ),
        myElevatedButton(onPressed: nextQuestion , text: "अग्रिम" ,context: context),
      ],
    );
  }
}
