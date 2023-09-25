import 'package:flutter/material.dart';
import 'package:samskritam/common/utils/dialog/play_sound.dart';
import 'package:samskritam/common/widgets/custom_button.dart';
import 'package:samskritam/common/widgets/custom_text_style.dart';

class Akshara extends StatelessWidget {
  final Map<dynamic, dynamic>? lessonData;
  final Function()? nextQuestion;

  const Akshara({super.key, this.lessonData, this.nextQuestion });

  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomSamskritText(text: lessonData?["text"]== null?"" : lessonData!["text"], fontSize: 180),
              listenToAudioButton(onPressed: (){
                // playSound(lessonData?['sound']);
                playSound(context: context,url: lessonData?['sound']);
              }, icon: const Icon(Icons.volume_up_rounded), context: context),
              const SizedBox(height: 32,),
              // Text("Example"),
              // Text("ANAAR"),
              // Expanded(child: SizedBox()),
            ],
          ),
        ),
        const SizedBox(height: 16,),
        // Text(lessonData.toString()),
        myElevatedButton(onPressed: nextQuestion , text: "अग्रिम" ,context: context),
      ],
    );
  }

}


