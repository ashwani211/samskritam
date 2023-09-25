import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:samskritam/common/utils/dialog/alert_dialog.dart';
import 'package:samskritam/common/widgets/custom_button.dart';
import 'package:samskritam/common/widgets/loading_screen.dart';
import 'package:samskritam/features/lessons/controller/lesson_controller.dart';
import 'package:samskritam/models/lesson_info.dart';

import 'route_lesson.dart';

final sliderValueProvider = StateProvider((ref) => 3.toDouble());

class LessonScreen extends ConsumerStatefulWidget {
  static const String routeName = "lesson-screen";

  final String lessonId;
  final String? lessonInfoTitle;
  final String? lessonInfoDetails;
  const LessonScreen(
      {super.key,
      required this.lessonId,
      this.lessonInfoTitle,
      this.lessonInfoDetails});

  // final Map<dynamic,dynamic>? lessonData = setting[a];

  @override
  ConsumerState<LessonScreen> createState() => _LessonScreenState();
}

class _LessonScreenState extends ConsumerState<LessonScreen> {
  // double sliderValue = 3;
  ScrollController? _lessonController;
  double listOffset = 0;

  @override
  void initState() {
    super.initState();
    // ref.invalidate(sliderValueProvider);
    Future.delayed(Duration(seconds: 0), () {
      ref.invalidate(sliderValueProvider);
    });
    _lessonController = ScrollController();
  }

  @override
  void dispose() {
    _lessonController?.dispose();
    super.dispose();
    try {
      ref.invalidate(sliderValueProvider);
    } catch (e) {
      print(e.toString());
    }
    // Future.delayed(Duration(seconds: 1), (){

    //   ref.invalidate(sliderValueProvider);});
  }

  @override
  Widget build(BuildContext context) {
    _lessonController = ScrollController(initialScrollOffset: listOffset);
    double width = MediaQuery.of(context).size.width;

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
                          "Do you want to quit?", () {
                        Navigator.of(context).pop();
                      });
                    },
                    icon: const Icon(Icons.cancel)),
                Expanded(
                  child: MySlider(),
                  // child: sliderButton(
                  //     value: sliderValue,
                  //     divisions: 1,
                  //     onChanged: (change) {},
                  //     context: context),
                ),
                IconButton(
                  onPressed: () {
                    simpleAlertDialog(
                        context,
                        widget.lessonInfoTitle ?? "Error!",
                        widget.lessonInfoDetails ?? "Data Unavailable...");
                  },
                  icon: Icon(
                    Icons.info,
                    // color: customDullWhite,
                  ),
                ),
                const SizedBox(
                  width: 8,
                )
              ]),
            ),
            Expanded(
              child: StreamBuilder(
                  stream: ref
                      .read(lessonControllerProvider)
                      .getLessons(lessonId: widget.lessonId),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const LoadingScreen();
                    }
                    var lessonData = snapshot.data;
                    int lessonLength =
                        (lessonData == null) ? 0 : lessonData.length;

                    if (lessonLength == 0) {
                      return LoadingScreen();
                    }

                    return ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        controller: _lessonController,
                        itemCount: lessonLength,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, i) {
                          if (lessonData == null) {
                            return SizedBox(
                              width: width - 16,
                              child: const LoadingScreen(),
                            );
                          }

                          Lesson? currLesson = lessonData[i];
                          return Container(
                            width: width - 16,
                            height: 40,
                            // color: Colors.blue,
                            margin: const EdgeInsets.all(8),
                            child: RouteLesson(
                              lesson: currLesson,
                              nextQuestion: () async {
                                listOffset = _lessonController!.offset + width;
                                ref.read(sliderValueProvider.notifier).state =
                                    ((i + 1) / (lessonLength - 1)) * 100;

                                await _lessonController?.animateTo(
                                    _lessonController!.offset + width,
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.decelerate);

                                setState(() {});
                              },
                            ),
                          );
                        });

                    // return Text(snapshot.data![0].toMap().toString());
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class MySlider extends ConsumerStatefulWidget {
  const MySlider({super.key});

  @override
  ConsumerState<MySlider> createState() => _MySliderState();
}

class _MySliderState extends ConsumerState<MySlider> {
  @override
  Widget build(BuildContext context) {
    final sliderValue = ref.watch(sliderValueProvider);
    return sliderButton(
        value: sliderValue,
        divisions: 100,
        onChanged: (change) {},
        context: context);
  }
}
