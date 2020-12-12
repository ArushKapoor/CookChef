import 'package:cook_chef/Models/AccountsList.dart';
import 'package:cook_chef/Models/CommentsTextFeild.dart';
import 'package:cook_chef/Widgets/EditPost.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:cook_chef/Widgets/BottomCommentsSheet.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cook_chef/Firestore/CloudFirestore.dart';
import 'package:provider/provider.dart';

class SinglePost extends StatefulWidget {
  final String name, time, description;
  final int comments, likes;
  final double width;
  final String userImage;
  final String postImageUrl;
  final String postId;
  final bool liked;
  final Map likesMap;
  final bool onAccountPage;
  SinglePost(
      {this.comments,
      this.description,
      this.likes,
      this.name,
      this.time,
      this.width,
      this.postImageUrl,
      this.postId,
      this.userImage,
      this.liked,
      this.likesMap,
      this.onAccountPage});

  @override
  _SinglePostState createState() => _SinglePostState();
}

class _SinglePostState extends State<SinglePost> {
  CloudFirestore _cloudFirestore = CloudFirestore();
  bool increment = false;

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    if (widget.liked != null) increment = widget.liked;
    return SafeArea(
      child: Column(
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: _height * 0.02,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: _width * 0.02,
                    ),
                    CircleAvatar(
                      radius: _width * 0.05,
                      backgroundImage: NetworkImage(widget.userImage),
                    ),
                    SizedBox(
                      width: _width * 0.01,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {},
                          child: Text(widget.name,
                              style: TextStyle(
                                  fontSize: _height * 0.02,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                        ),
                        Text(
                          correctTime(widget.time),
                          style: TextStyle(
                              fontSize: _height * 0.012, color: Colors.black54),
                        ),
                      ],
                    ),
                    if (widget.onAccountPage)
                      Expanded(
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: _width * 0.02),
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: () {
                              print(widget.postId);
                              showModalBottomSheet(
                                backgroundColor: Colors.black.withOpacity(0),
                                context: context,
                                isScrollControlled: true,
                                builder: (context) => EditPost(
                                  postId: widget.postId,
                                ),
                              );
                            },
                            child: Icon(Icons.keyboard_arrow_down),
                          ),
                        ),
                      ),
                  ],
                ),
                Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: _width * .05, vertical: _height * 0.01),
                    child: Text(widget.description)),
                if (widget.postImageUrl != null)
                  Container(
                    padding: EdgeInsets.all(_width * 0.05),

                    color: Colors.white,
                    height: _height * 0.55,
                    // width: _width,
                    child: Center(
                      child: CachedNetworkImage(
                        fit: BoxFit.contain,
                        placeholder: (context, url) =>
                            CircularProgressIndicator(
                                valueColor: new AlwaysStoppedAnimation<Color>(
                                    Colors.green)),
                        imageUrl: widget.postImageUrl,
                      ),
                    ),
                  ),
                Container(
                  padding: EdgeInsets.all(_width * .02),
                  child: Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () async {
                          setState(() {
                            increment = !increment;
                          });
                          if (increment) {
                            // print(widget.postId);
                            await _cloudFirestore.incrementingPostLikes(
                                widget.postId,
                                widget.likes,
                                increment,
                                widget.likesMap);
                          } else {
                            await _cloudFirestore.incrementingPostLikes(
                                widget.postId,
                                widget.likes - 2,
                                increment,
                                widget.likesMap);
                          }
                        },
                        child: increment
                            ? Icon(
                                Icons.favorite,
                                color: Color(0xff08a963),
                                size: 25,
                              )
                            : Icon(Icons.favorite_outline_sharp,
                                color: Color(0xff08a963), size: 23),
                      ),
                      SizedBox(
                        width: _width * 0.002,
                      ),
                      Text(
                        '${widget.likes}',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: _width * 0.03,
                      ),
                      GestureDetector(
                        onTap: () {
                          Provider.of<TextFeildToggler>(context, listen: false)
                              .toggling('', '', false, 0);
                          showModalBottomSheet(
                            backgroundColor: Colors.black.withOpacity(0),
                            context: context,
                            isScrollControlled: true,
                            builder: (context) => BottomCommentsSheetBuilder(
                              postId: widget.postId,
                              commentsCount: widget.comments,
                              isThisUser: widget.onAccountPage,
                            ),
                          );
                        },
                        child: Container(
                          height: _height * 0.025,
                          width: _width * 0.05,
                          child: SvgPicture.asset('assets/icons/chat.svg'),
                        ),
                      ),
                      SizedBox(
                        width: _width * 0.01,
                      ),
                      Text(
                        '${widget.comments}',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            child: Container(height: _height * 0.02, color: Color(0xffE6E3E3)),
          )
        ],
      ),
    );
  }
}

String correctTime(String timeToChange) {
  DateTime date = new DateTime.now();
  //print(timeToChange);
  String time = '';
  List<String> monthList1 = date.toString().split(' ');
  List<String> temp = timeToChange.split(' ');
  if (monthList1[0] == temp[0]) {
    List<String> dayList1 = monthList1[1].split(':');
    List<String> dayList2 = temp[1].split(':');
    if (dayList1[0] == dayList2[0]) {
      if (dayList1[1] == dayList2[1]) {
        if (int.parse(dayList1[1]) - int.parse(dayList2[1]) == 0) {
          time = 'now';
        }
        time = '${int.parse(dayList1[1]) - int.parse(dayList2[1])} seconds ago';
      } else {
        if (int.parse(dayList1[1]) - int.parse(dayList2[1]) == 1)
          time = '1 minute ago';
        else
          time =
              '${int.parse(dayList1[1]) - int.parse(dayList2[1])} minutes ago';
      }
    } else {
      if (int.parse(dayList1[0]) - int.parse(dayList2[0]) == 1)
        time = '1 hour ago';
      else
        time = '${int.parse(dayList1[0]) - int.parse(dayList2[0])} hours ago';
    }
  } else if (int.parse(monthList1[0].split('-')[2]) -
          int.parse(temp[0].split('-')[2]) ==
      1) {
    time = '1 day ago';
  } else {
    List<String> monthList = timeToChange.split('-');
    int month = int.parse(monthList[1].toString());
    int day = int.parse(monthList[2].split(' ')[0]);
    time += '$day ';
    switch (month) {
      case 1:
        time += 'Jan';
        break;
      case 2:
        time += 'Feb';
        break;
      case 3:
        time += 'Mar';
        break;
      case 4:
        time += 'Apr';
        break;
      case 5:
        time += 'May';
        break;
      case 6:
        time += 'Jun';
        break;
      case 7:
        time += 'Jul';
        break;
      case 8:
        time += 'Aug';
        break;
      case 9:
        time += 'Sep';
        break;
      case 10:
        time += 'Oct';
        break;
      case 11:
        time += 'Nov';
        break;
      case 12:
        time += 'Dec';
        break;
    }
    // print(time);
  }

  return time;
}
