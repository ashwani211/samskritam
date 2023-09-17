import 'package:flutter/material.dart';
import 'package:samskritam/common/config/apptheme/theme_colors.dart';
import 'package:samskritam/common/utils/dialog/alert_dialog.dart';
import 'package:samskritam/common/widgets/custom_button.dart';
import 'package:samskritam/common/widgets/loading_screen.dart';
import 'package:samskritam/features/lessons/screens/route_lesson.dart';

class LearnLesson extends StatefulWidget {
  const LearnLesson({super.key});

  // final Map<dynamic,dynamic>? lessonData = setting[a];

  @override
  State<LearnLesson> createState() => _LearnLessonState();
}

class _LearnLessonState extends State<LearnLesson> {
  double sliderValue = 3;
  ScrollController? _lessonController;

  @override
  Widget build(BuildContext context) {
    _lessonController = ScrollController();
    double width = MediaQuery.of(context).size.width;
    var args = (ModalRoute.of(context)?.settings.arguments ?? {}) as Map;
    final Map<dynamic, dynamic>? lessonData = args["data"];
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 50,
              child: Row(children: [
                IconButton(
                    onPressed: () {
                      simpleCancelAlertDialog(context, "Exiting...",
                          // "Do you want to quit?", () => goToHomePage(context));
                          "Do you want to quit?", () {});
                    },
                    icon: const Icon(Icons.cancel)),
                Expanded(
                  child: sliderButton(
                      value: sliderValue,
                      divisions: lessonData?.length ?? 1,
                      onChanged: (change) {},
                      // onChanged: (change) {
                      //   setState(() {
                      //     sliderValue = change;
                      //   });
                      // },
                      context: context),
                ),
                IconButton(
                  onPressed: () {},
                  icon:  Icon(
                    Icons.info_outline,
                    color: customDullWhite,
                  ),
                ),
                // const Text(
                //   "8",
                //   style: TextStyle(color: Colors.red),
                // ),
                const SizedBox(
                  width: 8,
                )
              ]),
            ),
            Expanded(
              child: SizedBox(
                width: double.infinity,
                // color: Colors.red,
                child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: _lessonController,
                    itemCount: (lessonData == null) ? 1 : lessonData.length - 1,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, i) {
                      if (lessonData == null) {
                        return SizedBox(
                          width: width - 16,
                          child: const LoadingScreen(),
                        );
                      }

                      Map<dynamic, dynamic>? currLesson = lessonData[i + 1];
                      return Container(
                        width: width - 16,
                        height: 40,
                        // color: Colors.blue,
                        margin: const EdgeInsets.all(8),
                        child: RouteLesson(
                          lessonData: currLesson,
                          nextQuestion: () {
                            _lessonController?.animateTo(
                                _lessonController!.offset + width,
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.decelerate);
                            // print(_lessonController.toString());
                            setState(() {
                              sliderValue =
                                  ((i + 1) / (lessonData.length - 2)) * 100;
                            });
                          },
                        ),
                        // child: Akshara(lessonData: currLesson, nextQuestion: () {
                        //   _lessonController?.animateTo(_lessonController!.offset + width, duration: const Duration(milliseconds: 500), curve: Curves.decelerate);
                        //   // print(_lessonController.toString());
                        //   setState(() {
                        //     sliderValue= ((i+1)/(lessonData.length - 2)) * 100;
                        //   });
                        // },),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
