import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:samskritam/common/widgets/custom_appbars.dart';
import 'package:samskritam/common/widgets/loading_screen.dart';
import 'package:samskritam/common/widgets/profile_pic.dart';
import 'package:samskritam/features/lessons/controller/lesson_controller.dart';
import 'package:samskritam/features/lessons/screens/lessons_screen.dart';
import 'package:samskritam/models/lesson_home_info.dart';

class LessonsHomeScreen extends ConsumerStatefulWidget {
  const LessonsHomeScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<LessonsHomeScreen> createState() => _LessonsHomeScreenState();
}

class _LessonsHomeScreenState extends ConsumerState<LessonsHomeScreen> {
  String text = "Reading at firebase";
  dynamic t;

  void tryReadingMapData() {
    text = ref.watch(lessonControllerProvider).getHomeLessons().toString();
    setState(() {});
  }

  void tryToAddDataToFirestore() {
    var db = FirebaseFirestore.instance;
    final docRef = db.collection("lessons").doc("0");
    try {
      docRef.get().then(
        (DocumentSnapshot doc) {
          final data = doc.data() as Map<String, dynamic>;
          setState(() {
            text = data.toString();
          });
        },
        onError: (e) => print("Error getting document: $e"),
      );
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: CustomBlueAppbar(
        onLeadingPressed: () {},
        leadingWidget: ProfilePic(
          size: 32,
        ),
        title: "King Kong",
      ),
      body: Column(
        children: [
          CustomLowerAppBar(),
          SizedBox(
            height: 24,
          ),
          Expanded(
            child: StreamBuilder(
              stream: ref.read(lessonControllerProvider).getHomeLessons(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const LoadingScreen();
                }

                // return Text(snapshot.data![index].imageUrl.toString());
                return ScrollConfiguration(
                  behavior: ScrollConfiguration.of(context)
                      .copyWith(scrollbars: false),
                  child: SingleChildScrollView(
                    child: Center(
                      child: SizedBox(
                        width: width * 0.75,
                        child: StaggeredGrid.count(
                          axisDirection: AxisDirection.down,
                          crossAxisCount: 6,
                          mainAxisSpacing: 4,
                          crossAxisSpacing: 4,
                          children: lessonTile(snapshot.data, [], context),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

List<Widget> lessonTile(List<LessonHomeInfo>? lessons, List? completedLessons,
    BuildContext context) {
  List<Widget> ite = [];

  for (int i = 0; i < lessons!.length; i++) {
    int s = lessons[i].cellCount!;

    Widget w;
    // if (completedLessons!.contains(i)) {
    //   w = StaggeredGridTile.count(
    //     crossAxisCellCount: s,
    //     mainAxisCellCount: 2,
    //     child: Container(
    //       padding: const EdgeInsets.all(8),
    //       child: lessonImage(lessons[i], () => null, context, true),
    //     ),
    //   );
    // } else {
    w = StaggeredGridTile.count(
      crossAxisCellCount: s,
      mainAxisCellCount: 2,
      child: Container(
        padding: const EdgeInsets.all(8),
        child: lessonImage(lessons[i], () => null, context, false),
      ),
    );
    // }
    ite.add(w);
  }

  // ite.add(w);

  return ite;
}

Widget lessonImage(LessonHomeInfo? lessonData, Function() onPressed,
    BuildContext context, bool isCompletedLesson) {
  if (lessonData == null) {
    return const SizedBox();
  }

  if (lessonData.type == "image") {
    return Padding(
      padding: EdgeInsets.only(bottom: 8),
      child: SizedBox(
        width: 200,
        height: 200,
        child: CachedNetworkImage(imageUrl: lessonData.imageUrl!),
      ),
    );
  } else {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, LessonScreen.routeName, arguments: {
          "lesson_id": lessonData.lessonId,
          "info_title": lessonData.infoTitle,
          "info_details": lessonData.infoDetails,
          
        });
      },
      child: Opacity(
        opacity: isCompletedLesson ? .5 : 1,
        child: AspectRatio(
          aspectRatio: 1.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: ClipOval(
                  child: CachedNetworkImage(
                      imageUrl: lessonData.imageUrl.toString()),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                lessonData.name!,
                style: TextStyle(fontFamily: "Samskrit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
