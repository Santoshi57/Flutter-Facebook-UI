import 'package:flutter/material.dart';

class ReactionButtons extends StatelessWidget {
  const ReactionButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left:8.0),
              child: Icon(Icons.thumb_up),
            ),
            Text('Like'),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left:8.0),
              child: Icon(Icons.comment),
            ),
            Text('Comment'),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left:8.0),
              child: Icon(Icons.share),
            ),
            Text('Share'),
          ],
        ),
      ],
    ),);
  }
}