import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:samskritam/common/widgets/custom_button.dart';

class LessonCongratulationsImage extends StatelessWidget {
  const LessonCongratulationsImage({super.key, this.imageLink});

  final String? imageLink;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    // return Text("test");
    return Column(
      children: [
        Expanded(
          child: SizedBox(
            height: height,
            width: 200,
            child: imageLink != null
                ? Center(child: CachedNetworkImage(imageUrl: imageLink.toString()))
                : Image.asset(
                    "assets/images/congratulation.png",
                    fit: BoxFit.fitWidth,
                  ),
            // child: Image.network(imageLink ??
            //     "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f0/Error.svg/1200px-Error.svg.png",
            //   // loadingBuilder: (context, child, loadingProgress) => const Center(child: Text("loading"),),
            // ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Consumer(builder: (context, ref, _) {
          return myElevatedButton(
              onPressed: () {
                // goToHomePage(context);
                // print(ref.read(currentQuestionProvider).curr);
                Navigator.of(context).pop();
              },
              text: "समापयती",
              context: context);
        }),
      ],
    );
  }
}
