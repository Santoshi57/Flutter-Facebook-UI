import 'package:flutter_project/widgets/reactionButtons.dart';
import 'package:flutter/material.dart';

class FeedWithTextBackground extends StatelessWidget {
  const FeedWithTextBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                child: Padding(
                  padding: const EdgeInsets.all(2), // Border radius
                  child: ClipOval(child: Image.network('assets/images/san.jpg')),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left:8.0),
                  child: RichText(

                    text:  TextSpan(
                        style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(text: 'is with ', style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal,color: Colors.black)),
                          TextSpan(text: 'Preeti Rauniyar'),
                          TextSpan(text: ' and  ', style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal,color: Colors.black)),
                          TextSpan(text: '2 others'),


                        ],
                        text: 'Santoshi Chaulagain'


                    ),),
                ),
              ),

            ],
          ),
          SizedBox(height: 10,),
          Container(
            width: 500,
            height:500,

              child: ClipOval(child: Image.network('assets/images/san.jpg')),

          ),


          Divider(),
          ReactionButtons(),
          Divider()
        ],
      ),
    );
  }
}