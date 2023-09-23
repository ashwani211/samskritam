import 'package:flutter/material.dart';

class SocialScreen extends StatelessWidget {
  const SocialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
        title: const Text("Samskritam"),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.add_circle))],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          if(index == 0 ){
            return Container(
              height: 2,
              color: Colors.grey,
            );
          }
          return SizedBox(
            height: 396,
            child: Column(
              children: [
                Container(height: 2, color: Colors.grey,),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.circle),
                    ),
                    const Text("Some User"),
                  ],
                ),
                const SizedBox(height: 8,),
                const Row(
                  children: [
                    SizedBox(width: 46,),
                    Text("These are questions asked by someone"),
                  ],
                ),
                const SizedBox(height: 8,),
                Image.network(
                    "https://www.shutterstock.com/image-illustration/lettering-lesson-1-on-green-260nw-1780698029.jpg"),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.thumb_up_outlined),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.thumb_down_outlined),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.comment_outlined),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.share_outlined),
                    ),
                    
                  ],
                ),
                Container(height: 2, color: Colors.grey,),

              ],
            ),
          );
        },
      ),
    );
  
  }
}