import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:samskritam/common/config/apptheme/theme_colors.dart';
import 'package:samskritam/common/utils/dialog/alert_dialog.dart';
import 'package:samskritam/common/widgets/custom_button.dart';
import 'package:samskritam/common/widgets/loading_screen.dart';
import 'package:samskritam/features/lessons/controller/lesson_controller.dart';
import 'package:samskritam/models/lesson_info.dart';

import 'route_lesson.dart';

class LessonScreen extends StatefulWidget {
  static const String routeName = "lesson-screen";

  final String lessonId;
  const LessonScreen({super.key, required this.lessonId});

  // final Map<dynamic,dynamic>? lessonData = setting[a];

  @override
  State<LessonScreen> createState() => _LessonScreenState();
}

class _LessonScreenState extends State<LessonScreen> {
  double sliderValue = 3;
  ScrollController? _lessonController;

  @override
  void dispose() {
    _lessonController?.dispose();
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    _lessonController = ScrollController();
    double width = MediaQuery.of(context).size.width;
    // var args = (ModalRoute.of(context)?.settings.arguments ?? {}) as Map;
    // final Map<dynamic, dynamic>? lessonData = args["data"];
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 50,
              child: Row(children: [
                IconButton(
                    onPressed: () {
                      simpleCancelAlertDialog(
                          context,
                          "Exiting...",
                          // "Do you want to quit?", () => goToHomePage(context));
                          "Do you want to quit?",
                          () {});
                    },
                    icon: const Icon(Icons.cancel)),
                Expanded(
                  child: sliderButton(
                      value: sliderValue,
                      divisions: 1,
                      // divisions: lessonData?.length ?? 1,
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
                  icon: Icon(
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
            Consumer(builder: (context, ref, _) {
              return Expanded(
                child: StreamBuilder(
                    stream: ref
                        .read(lessonControllerProvider)
                        .getLessons(lessonId: widget.lessonId),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const LoadingScreen();
                      }
                      var lessonData = snapshot.data;
                      
                      return ListView.builder(
                          
                          physics: const NeverScrollableScrollPhysics(),
                          controller: _lessonController,
                          itemCount:
                              (lessonData == null) ? 1 : lessonData.length - 1,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, i) {

                            if (lessonData == null) {
                              return SizedBox(
                                width: width - 16,
                                child: const LoadingScreen(),
                              );
                            }

                            Lesson? currLesson = lessonData[i + 1];
                            return Container(
                              width: width - 16,
                              height: 40,
                              // color: Colors.blue,
                              margin: const EdgeInsets.all(8),
                              child: RouteLesson(
                                lesson: currLesson,
                                nextQuestion: () {
                                  _lessonController?.animateTo(
                                      _lessonController!.offset + width,
                                      duration: const Duration(milliseconds: 300),
                                      curve: Curves.decelerate);
                                  print(_lessonController.toString());
                                  // setState(() {
                                  //   sliderValue =
                                  //       ((i + 1) / (lessonData.length - 2)) * 100;
                                  // });
                                },
                              ),
                            );
                          });

                      // return Text(snapshot.data![0].toMap().toString());
                    }),
              );
            }),

          ],
        ),
      ),
    );
  }
}
