import 'package:flutter_project/model/story.dart';
import 'package:flutter/material.dart';

class StoryUI extends StatelessWidget {
  Story story;

  StoryUI({Key? key,required this.story}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,

      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: NetworkImage(story.story),
          fit: BoxFit.cover,
        ),
      ),
      width: MediaQuery.of(context).size.width*.3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment:MainAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(2), // Border radius
                    child: ClipOval(child: Image.network(story.story)),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(story.name,style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 16
            ),),
          ),
        ],
      ),
    );
  }
}