// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:facebook_clone_ui/widgets/home/postbuttons.dart';
import 'package:facebook_clone_ui/widgets/home/postfooter.dart';
import 'package:facebook_clone_ui/widgets/home/postheader.dart';
import 'package:flutter/material.dart';
import 'package:facebook_clone_ui/models/post_model.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PostContainer extends StatelessWidget {
  const PostContainer({
    Key? key,
    required this.post,
  }) : super(key: key);
  final Post post;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.only(top: 15),
      padding: const EdgeInsets.only(top: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PostHeader(post: post),
                const SizedBox(
                  height: 12.0,
                ),
                Text(post.caption!),
                const SizedBox(
                  height: 12.0,
                ),
              ],
            ),
          ),
          post.imageUrl != null
              ? Image.network(post.imageUrl!)
              : const SizedBox.shrink(),
          const SizedBox(
            height: 12.0,
          ),
          PostFooter(
            post: post,
          ),
          const Divider(
            thickness: 1.5,
            indent: 12,
            endIndent: 12,
          ),
          const PostButtons()
        ],
      ),
    );
  }
}
