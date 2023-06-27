// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:facebook_clone_ui/models/stories.dart';
import 'package:facebook_clone_ui/widgets/home/create_story.dart';
import 'package:flutter/material.dart';

import 'package:facebook_clone_ui/models/user_model.dart';

class Stories extends StatelessWidget {
  const Stories({
    Key? key,
    required this.currentUser,
    required this.stories,
  }) : super(key: key);
  final User currentUser;
  final List<Story> stories;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.white,
      child: ListView.builder(
        padding: const EdgeInsets.fromLTRB(15, 12, 15, 12),
        scrollDirection: Axis.horizontal,
        itemCount: stories.length + 1,
        itemBuilder: (context, i) {
          int index = i - 1;
          if (i == 0) {
            return const CreateStory();
          }
          return Container(
            margin: const EdgeInsets.only(right: 8.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 1),
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            width: 95,
            child: Stack(
              children: [
                SizedBox(
                  height: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(19),
                    child: Image.network(
                      stories[index].imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: Stack(children: [
                        CircleAvatar(
                          backgroundColor: stories[index].isViewed != true
                              ? Colors.blue
                              : Colors.grey,
                          radius: 20,
                          child: CircleAvatar(
                            radius: 18,
                            backgroundImage:
                                NetworkImage(stories[index].user.imageUrl),
                          ),
                        ),
                      ]),
                    ),
                    Expanded(child: Container()),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        stories[index].user.name,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
