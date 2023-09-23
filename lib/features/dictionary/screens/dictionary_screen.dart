import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:samskritam/common/widgets/custom_button.dart';
import 'package:samskritam/common/widgets/custom_text_style.dart';


class DictionaryScreen extends ConsumerWidget {
  const DictionaryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
        title: const Text("शब्दकोशः", style: TextStyle(fontFamily: "Samskrit"), ),
        actions: [IconButton(onPressed: () {
          // goToSettingsPage(context);
        }, icon: const Icon(Icons.settings))],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 66,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 16, right: 8),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.white),
                        borderRadius: BorderRadius.circular(8)),
                    child: const Text('Search'),
                  ),
                ),
                myElevatedButton(
                  height: 40,
                  width: 100,
                  fontSize: 14,
                  onPressed: () {},
                  text: "Translate",
                  context: context,
                ),
                const SizedBox(width: 16,)
              ],
            ),
          ),
          const SizedBox(height: 8,),
          Expanded(
            child: ListView.builder(
              itemCount: 40,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                  color: (index % 2 == 0) ? Colors.grey[600]:Colors.grey[200],
                  padding: const EdgeInsets.all(4),
                  child: Row(
                    children: [
                      Expanded(child: CustomSamskritText(text : "अशोध्यऋण")),
                      Expanded(child: CustomSamskritText(text: "noun")),
                      Expanded(child: CustomSamskritText(text : "Bad debt")),
                    ],
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
