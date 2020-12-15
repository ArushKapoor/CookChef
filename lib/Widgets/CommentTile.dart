import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cook_chef/Firestore/CloudFirestore.dart';
import 'ExpandedContainer.dart';
import 'package:cook_chef/Models/CommentsTextFeild.dart';
import 'package:cook_chef/Screens/Account/AccountPage.dart';
import 'package:cook_chef/Models/AccountPageArgument.dart';

class CommentTile extends StatefulWidget {
  final String username;
  final String comment;
  final int likes;
  final String commentId;
  final String postId;
  final String userImage;
  final bool liked;
  final Map likesMap;
  final bool isThisUser;
  final String commentUserId;
  final int replyCount;
  final bool onAccountPage;
  final Function deletingCommentCallback;
  CommentTile(
      {this.username,
      this.onAccountPage,
      this.comment,
      this.commentId,
      this.likes,
      this.commentUserId,
      this.postId,
      this.userImage,
      this.liked,
      this.likesMap,
      this.isThisUser,
      this.replyCount,
      this.deletingCommentCallback});

  @override
  _CommentTileState createState() => _CommentTileState();
}

class _CommentTileState extends State<CommentTile> {
  CloudFirestore _cloudFirestore = CloudFirestore();
  bool increment = false;
  bool expandFlag = false;
  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    if (widget.liked != null) increment = widget.liked;
    return Container(
      margin: EdgeInsets.only(bottom: 8.0),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10.0, top: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    if (widget.onAccountPage != true)
                      Navigator.pushNamed(context, AccountPage.id,
                          arguments: AccountArgument(
                              outerUserUid: widget.commentUserId));
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(widget.userImage),
                  ),
                ),
                SizedBox(
                  width: 8.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (widget.onAccountPage != true)
                          Navigator.pushNamed(context, AccountPage.id,
                              arguments: AccountArgument(
                                  outerUserUid: widget.commentUserId));
                      },
                      child: Text(
                        widget.username,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: _width * 0.70,
                      child: Text(
                        widget.comment,
                        softWrap: true,
                        maxLines: 3,
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.clip,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    // Text('💗 15'),
                    SizedBox(height: 1),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Row(
                            children: <Widget>[
                              GestureDetector(
                                onTap: () async {
                                  setState(() {
                                    increment = !increment;
                                  });

                                  if (increment) {
                                    await _cloudFirestore
                                        .incrementingCommentLikes(
                                            widget.postId,
                                            widget.likes,
                                            widget.commentId,
                                            increment,
                                            widget.likesMap);
                                  } else {
                                    await _cloudFirestore
                                        .incrementingCommentLikes(
                                            widget.postId,
                                            widget.likes - 2,
                                            widget.commentId,
                                            increment,
                                            widget.likesMap);
                                  }
                                },
                                child: increment
                                    ? Icon(Icons.favorite,
                                        color: Color(0xff08a963), size: 25)
                                    : Icon(Icons.favorite_outline_sharp,
                                        size: 20
                                        // color: Colors.greenAccent,
                                        ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('${widget.likes}'),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: _width * 0.05,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              expandFlag = !expandFlag;
                            });

                            Provider.of<TextFeildToggler>(context,
                                    listen: false)
                                .toggling(widget.commentId, widget.username,
                                    expandFlag, widget.replyCount);
                          },
                          child: Container(
                            child: Row(
                              children: <Widget>[
                                SvgPicture.asset(
                                  'assets/icons/comment.svg',
                                  height: _width * 0.06,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('${widget.replyCount}'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                if (widget.isThisUser)
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: widget.deletingCommentCallback,
                  ),
              ],
            ),
          ),
          ExpandableContainer(
            expanded: expandFlag,
            postId: widget.postId,
            commentId: widget.commentId,
            username: widget.username,
            replyCount: widget.replyCount,
            onAccountPage: widget.onAccountPage,
          ),
          Container(
            height: 1,
            width: _width,
            color: Colors.grey[200],
          ),
        ],
      ),
    );
  }
}
