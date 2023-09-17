import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:samskritam/common/widgets/custom_appbars.dart';
import 'package:samskritam/common/widgets/loading_screen.dart';
import 'package:samskritam/common/widgets/profile_pic.dart';
import 'package:samskritam/features/lessons/controller/lesson_controller.dart';

class LessonsHomeScreen extends ConsumerStatefulWidget {
  const LessonsHomeScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<LessonsHomeScreen> createState() => _LessonsHomeScreenState();
}

class _LessonsHomeScreenState extends ConsumerState<LessonsHomeScreen> {
  String text = "Reading at firebase";
  dynamic t;

  void tryReadingMapData() {
    text = ref.watch(lessonControllerProvider).getLessons().toString();
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
          print(data);
        },
        onError: (e) => print("Error getting document: $e"),
      );
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
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
          Center(
            child: ElevatedButton(
              child: Text("Click me"),
              onPressed: () {
                // tryToAddDataToFirestore();
                tryReadingMapData();
              },
            ),
          ),
          StreamBuilder(
            stream: ref.read(lessonControllerProvider).getLessons(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const LoadingScreen();
              }
              return Text("chekcing" + snapshot.data![0].imageUrl.toString());
            },
          )
        ],
      ),
    );
  }
}
