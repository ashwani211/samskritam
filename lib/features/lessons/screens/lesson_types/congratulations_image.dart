import 'package:flutter/material.dart';
import 'package:samskritam/common/widgets/custom_button.dart';

class LessonCongratulationsImage extends StatelessWidget {
  const LessonCongratulationsImage({super.key, this.imageLink});

  final String? imageLink;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Expanded(
          child: SizedBox(
            height: height,
            child: Image.asset("images/congrats.gif", fit: BoxFit.fitHeight,),
            // child: Image.network(imageLink ??
            //     "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f0/Error.svg/1200px-Error.svg.png",
            //   // loadingBuilder: (context, child, loadingProgress) => const Center(child: Text("loading"),),
            // ),
          ),
        ),
        const SizedBox(height: 8,),
        myElevatedButton(onPressed: (){
          // goToHomePage(context);
        } , text: "समापयती" ,context: context),

      ],
    );
  }
}
