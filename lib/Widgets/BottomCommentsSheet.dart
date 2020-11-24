import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomCommentsSheetBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    TextEditingController textEditingController;
    return Container(
      padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom, top: _height * .24),
      child: Container(
        color: Color(0xFF757575),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Flexible(
                fit: FlexFit.loose,
                child: ListView(
                  shrinkWrap: true,
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CommentTile(),
                    SizedBox(
                      height: 8.0,
                    ),
                    CommentTile(),
                    SizedBox(
                      height: 8.0,
                    ),
                    CommentTile(),
                    SizedBox(
                      height: 8.0,
                    ),
                    CommentTile(),
                    SizedBox(
                      height: 8.0,
                    ),
                    CommentTile(),
                    SizedBox(
                      height: 8.0,
                    ),
                    CommentTile(),
                    // SizedBox(
                    //   height: 8.0,
                    // ),
                    // CommentTile(),
                    // SizedBox(
                    //   height: 8.0,
                    // ),
                    // CommentTile(),
                    // SizedBox(
                    //   height: 8.0,
                    // ),
                    // CommentTile(),
                    // SizedBox(
                    //   height: 8.0,
                    // ),
                    // CommentTile(),
                    // SizedBox(
                    //   height: 8.0,
                    // ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10.0, bottom: 10.0, top: 5.0),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.grey[300]),
                  ),
                  color: Colors.white,
                ),
                width: _width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      'Type Your Comment',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      width: _width * 0.90,
                      child: TextField(
                        controller: textEditingController,
                        autofocus: true,
                        cursorColor: Colors.lightBlueAccent,
                        cursorRadius: Radius.circular(3),
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          focusColor: Colors.lightBlueAccent,
                          hintText: 'Enter your comment',
                          suffix: GestureDetector(
                            onTap: () {},
                            child: Text('Share'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
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
    double _width = MediaQuery.of(context).size.width;

    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 10.0, top: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/icons/ingredients.png'),
              ),
              SizedBox(
                width: 8.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Arush',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: _width * 0.70,
                    child: Text(
                      'Pink ball ko maar maarke laal bana dena sir 😍❤ first test mai',
                      softWrap: true,
                      maxLines: 3,
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.clip,
                    ),
                  ),
                  // Text('💗 15'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            SvgPicture.asset(
                              'assets/icons/comment.svg',
                              height: 14,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text('1'),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: _width * 0.4,
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.favorite_border),
                            SizedBox(
                              width: 5,
                            ),
                            Text('5'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          height: 1,
          width: _width,
          color: Colors.grey[200],
        ),
      ],
    );
  }
}
