import 'package:facebook_clone_ui/models/data.dart';
import 'package:facebook_clone_ui/models/post_model.dart';
import 'package:facebook_clone_ui/models/stories.dart';
import 'package:facebook_clone_ui/models/user_model.dart';
import 'package:facebook_clone_ui/widgets/home/create_post_container.dart';
import 'package:facebook_clone_ui/widgets/home/post.dart';
import 'package:facebook_clone_ui/widgets/home/stories.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    User currentUser = Data.currentUser;
    List<Story> stories = Data.stories;
    List<Post> posts = Data.posts;
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CreatePostContainer(currentUser: currentUser),
            const SizedBox(
              height: 14.0,
            ),
            Stories(
              currentUser: currentUser,
              stories: stories,
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: posts.length,
              itemBuilder: ((context, i) {
                final Post post = posts[i];
                return PostContainer(post: post);
              }),
            ),
          ],
        ),
      ),
    );
  }
}
