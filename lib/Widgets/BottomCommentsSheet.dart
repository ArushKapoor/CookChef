import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomCommentsSheetBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController;
    return Container(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        color: Color(0xFF757575),
        child: Container(
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CommentTile(),
              CommentTile(),
              CommentTile(),
              CommentTile(),
              // Column(
              //   children: [
              //     Text(
              //       'Type Your Comment',
              //       style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
              //     ),
              //     Row(children: [
              //       TextField(
              //         controller: textEditingController,
              //         autofocus: true,
              //         textAlign: TextAlign.center,
              //         cursorColor: Colors.lightBlueAccent,
              //         cursorRadius: Radius.circular(3),
              //         textInputAction: TextInputAction.done,
              //         decoration: InputDecoration(
              //           focusColor: Colors.lightBlueAccent,
              //         ),
              //       ),
              //       Text(
              //         'Share',
              //         style: TextStyle(color: Colors.greenAccent),
              //       )
              //     ]),
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }
}

class CommentTile extends StatelessWidget {
  const CommentTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Center(
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/icons/ingredients.png'),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Arush',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Pink ball ko maar maarke laal bana dena sir 😍❤ first test mai',
              softWrap: true,
              maxLines: 3,
              textAlign: TextAlign.start,
              overflow: TextOverflow.clip,
            ),
            Text('💗 15'),
            Container(
              height: 1,
              width: 150,
              color: Colors.black,
            )
          ],
        )
      ],
    );
  }
}
