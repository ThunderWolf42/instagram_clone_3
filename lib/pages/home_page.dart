import 'package:flutter/material.dart';
import 'package:instagram_clone_3/widgets/bubble_story.dart';
import 'package:instagram_clone_3/widgets/user_post.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List users = [
    'user1',
    'user2',
    'user3',
    'user4',
    'user5 ',
    'user6',
    'user7',
    'user8'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Instagram',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black),
        ),
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: const [
          Icon(
            Icons.add_box_outlined,
            size: 30,
            color: Colors.black,

          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child:
                Icon(Icons.favorite_outlined, size: 30, color: Colors.purple),
          ),
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.send_outlined, size: 30, color: Colors.black),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 122,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return BubbleStory(
                  name: users[index],
                );
              },
              itemCount: users.length,
            ),
          ),
          const Divider(
            height: 1,
          ),
          Expanded(
              child: ListView.builder(
            itemBuilder: (context, index) {
              return UserPost(name: users[index]);
            },
            itemCount: users.length,
          ))
        ],
      ),
    );
  }
}
