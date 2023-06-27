import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PostButtons extends StatelessWidget {
  const PostButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * .32,
              child: TextButton.icon(
                icon: Icon(
                  Icons.thumb_up_alt_outlined,
                  color: Colors.grey[600],
                ),
                onPressed: () {},
                label: Text(
                  'Likes',
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * .32,
              child: TextButton.icon(
                icon: Icon(
                  MdiIcons.commentOutline,
                  color: Colors.grey[600],
                ),
                onPressed: () {},
                label: Text(
                  'Likes',
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * .32,
              child: TextButton.icon(
                icon: Icon(
                  MdiIcons.shareOutline,
                  color: Colors.grey[600],
                ),
                onPressed: () {},
                label: Text(
                  'Likes',
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
