import 'package:facebook_clone_ui/models/post_model.dart';
import 'package:flutter/material.dart';

class PostFooter extends StatelessWidget {
  const PostFooter({
    Key? key,
    required this.post,
  }) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(4.0),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
                child: const Icon(
                  Icons.thumb_up,
                  color: Colors.white,
                  size: 12.0,
                ),
              ),
              const SizedBox(
                width: 4.0,
              ),
              Text(
                '${post.likes}',
                style: TextStyle(color: Colors.grey[600]),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '${post.comments} comments  •  ',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                    Text(
                      '${post.shares} shares',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
