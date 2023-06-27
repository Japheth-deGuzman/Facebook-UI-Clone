import 'package:facebook_clone_ui/models/post_model.dart';
import 'package:flutter/material.dart';

class PostHeader extends StatelessWidget {
  const PostHeader({
    Key? key,
    required this.post,
  }) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(post.user.imageUrl),
        ),
        const SizedBox(
          width: 8.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                post.user.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 2,
              ),
              Row(
                children: [
                  Text('${post.timeAgo} • '),
                  Icon(
                    Icons.public,
                    color: Colors.grey[600],
                    size: 12.0,
                  )
                ],
              ),
            ],
          ),
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
      ],
    );
  }
}
