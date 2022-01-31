import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  final title;
  final describtion;
  const TaskCard({this.title,this.describtion});
  @override
  Widget build(BuildContext context) {
    return Container(

      width: double.infinity,
      margin: EdgeInsets.only(bottom: 14),
      padding: EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 34,
      ),
      decoration: BoxDecoration(
        color: Color(0xFFefeded),
        borderRadius: BorderRadius.circular(20),

      ),
      child :
      Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

           Text(title ?? 'Getting Started =>',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        Padding(
          padding: EdgeInsets.only(
            top: 15,
          ),
          child: Text(describtion ?? 'Hello There, Welcome to The-To-Do-List, your personal assistant to help you keep track of your tasks!',
          style: TextStyle(
            fontSize: 16,
            color: Colors.black38,
            height: 1.5,
          ),),
        )
      ],
    ),
    );

  }
}


class todo extends StatelessWidget {
  const todo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 8,
      ),
      child: Row(
        children: [
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
              ),
          ),
        ],
      ),
    );
  }
}
