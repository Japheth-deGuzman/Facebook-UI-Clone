// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:facebook_clone_ui/models/user_model.dart';
import 'package:flutter/material.dart';

class CreatePostContainer extends StatelessWidget {
  const CreatePostContainer({
    Key? key,
    required this.currentUser,
  }) : super(key: key);
  final User currentUser;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 8.0),
      height: 70,
      color: Colors.white,
      child: Row(
        children: [
          GestureDetector(
            onTap: () => debugPrint('Profile'),
            child: CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(currentUser.imageUrl),
            ),
          ),
          const SizedBox(
            width: 12.0,
          ),
          Expanded(
              child: GestureDetector(
            onTap: () {
              debugPrint('Button to post something');
            },
            child: Container(
              padding: const EdgeInsets.fromLTRB(20.0, 8.0, 0, 8.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.black54)),
              child: const Text(
                'What\'s on your mind?',
                style: TextStyle(fontSize: 15.0),
              ),
            ),
          )),
          const SizedBox(
            width: 9.0,
          ),
          IconButton(
              onPressed: () {
                debugPrint('Button to open Gallery');
              },
              icon: const Icon(
                Icons.photo_library_outlined,
                color: Colors.green,
              ))
        ],
      ),
    );
  }
}
