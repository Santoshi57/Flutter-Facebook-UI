import 'package:flutter_project/model/story.dart';
import 'package:flutter_project/util/data.dart';
import 'package:flutter_project/widgets/feedWithTextBackground.dart';
import 'package:flutter_project/widgets/storyUI.dart';
import 'package:flutter/material.dart';

class MyFeedHomePage extends StatefulWidget {
  const MyFeedHomePage({Key? key}) : super(key: key);
  @override
  State<MyFeedHomePage> createState() => _MyFeedHomePageState();
}
class _MyFeedHomePageState extends State<MyFeedHomePage> {
  List<Story> _stories=[];
  @override
  initState(){
    getStoryData();
  }
  getStoryData(){
    STORY_DATA.forEach((element) {
      _stories.add(Story.fromJson(element));
    });
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
      Container(
      height: 220,
      padding: EdgeInsets.only(left:12,top:12,bottom: 12),
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: [
              ..._stories.map((e) =>
          Padding(
          padding: const EdgeInsets.only(right:8.0),
      child: StoryUI(story: e,),
    ),
    )

    ],
    ),
    ),
    ),
    ... [1,2,2,2,2].map((e) =>



    Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12),
    child: FeedWithTextBackground(),
    ),
    )

    ],
    );
  }
}