import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:cook_chef/Widgets/BottomCommentsSheet.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cook_chef/Firestore/CloudFirestore.dart';
import 'package:provider/provider.dart';

final _firestore = FirebaseFirestore.instance;

class FeedPage extends StatefulWidget {
  static const String id = 'feed_page';
  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  /* This method is to setup each dishCategory */
  String _selectedTab = 'Veg';
  Material _dishCategory(String text, double width) {
    return Material(
      borderRadius: BorderRadius.all(Radius.circular(5.0)),
      shadowColor: Color(0xff7e807f),
      elevation: (text == _selectedTab) ? 7 : 0,
      child: Container(
        width: width * 0.3,
        padding: EdgeInsets.symmetric(vertical: 3.0, horizontal: 10.5),
        decoration: BoxDecoration(
          border: (text != _selectedTab)
              ? Border.all(color: Colors.grey[400])
              : Border(),
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          // boxShadow: [
          //   (text == 'Indian')
          //       ? //background color of box
          //       BoxShadow(
          //           color: Colors.grey,
          //           spreadRadius: 1,
          //           blurRadius: 0.5,
          //           offset: Offset(0, 2),
          //         )
          //       : BoxShadow(
          //           color: Colors.white,
          //         ),
          // ],
          color: Colors.white,
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

/* This method is to setup the post */
  // Container _post(
  //     {String name,
  //     String time,
  //     String description,
  //     Image image,
  //     double width,
  //     String likes,
  //     int comments}) {
  //   return Container(
  //     child: Column(
  //       children: <Widget>[
  //         Row(
  //           children: <Widget>[
  //             Icon(Icons.account_circle),
  //             Column(
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: <Widget>[
  //                 Text(name),
  //                 Text(time),
  //               ],
  //             ),
  //           ],
  //         ),
  //         Text(description),
  //         image,
  //         Row(
  //           children: <Widget>[
  //             Icon(
  //               Icons.favorite_border,
  //             ),
  //             Container(
  //               height: 19,
  //               width: 35,
  //               child: SvgPicture.asset('assets/icons/chat.svg'),
  //             ),
  //           ],
  //         ),
  //         Container(
  //           width: width,
  //           child: Text(
  //             '$likes likes',
  //           ),
  //         ),
  //         Container(
  //           width: width,
  //           child: Text('View all $comments comments'),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    /* These are media query variables which store the height
      and width of the phone screen.
     */
    // final _height = MediaQuery.of(context).size.height -
    //     MediaQuery.of(context).padding.top -
    //     kToolbarHeight;
    final _width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(8.0),
              color: Color(0xffDCE1DE),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  /* Calling the _dishCategory method at line 10 */
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedTab = 'Veg';
                      });
                    },
                    child: _dishCategory('Veg', _width),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedTab = 'Non Veg';
                      });
                    },
                    child: _dishCategory('Non Veg', _width),
                  ),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedTab = 'Beverages';
                        });
                      },
                      child: _dishCategory('Beverages', _width)),
                  // _dishCategory('South Indian'),
                ],
              ),
            ),

            FeedsStream(
              width: _width,
            ),
// bottomNavigationBar(context: context, page: HomePage.id),
          ],
        ),
      ),
    );
  }
}

class FeedsStream extends StatelessWidget {
  final width;
  FeedsStream({this.width});
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: _firestore.collection('feeds').orderBy('timestamp').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.green,
              ),
            );
          }
          final posts = snapshot.data.docs;
          List<SinglePost> singlePost = [];
          for (var post in posts) {
            final username = post.get('username');
            final postTime = post.get('timestamp');
            final recipe = post.get('recipe');
            final imageUrl = post.get('imageUrl');
            final likes = post.get('likes');
            final postId = post.get('postId');
            singlePost.add(
              SinglePost(
                name: username,
                postImageUrl: imageUrl,
                likes: likes,
                time: '1 Nov',
                description: recipe,
                width: width,
                comments: 0,
                image: Image.asset('assets/images/dal_gosht.jpg'),
                postId: postId,
              ),
            );
            print(singlePost.toString());
          }
          return Expanded(
            child: ListView(
              physics: AlwaysScrollableScrollPhysics(),
              shrinkWrap: true,
              children: singlePost,
            ),
          );
        });
  }
}

class SinglePost extends StatefulWidget {
  final String name, time, description;
  final int comments, likes;
  final double width;
  final Image image;
  final String postImageUrl;
  final String postId;

  SinglePost(
      {this.comments,
      this.description,
      this.image,
      this.likes,
      this.name,
      this.time,
      this.width,
      this.postImageUrl,
      this.postId});

  @override
  _SinglePostState createState() => _SinglePostState();
}

class _SinglePostState extends State<SinglePost> {
  bool increment = false;
  CloudFirestore _cloudFirestore = CloudFirestore();
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
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
                  Icon(
                    Icons.account_circle,
                    size: _width * 0.08,
                  ),
                  SizedBox(
                    width: _width * 0.01,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(widget.name,
                          style: TextStyle(
                              fontSize: _height * 0.02,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54)),
                      Text(
                        widget.time,
                        style: TextStyle(
                            fontSize: _height * 0.01, color: Colors.black54),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: _width * .04, vertical: _height * 0.01),
                  child: Text(widget.description)),
              if (widget.postImageUrl != null)
                Container(
                  padding: EdgeInsets.all(_width * 0.05),
                  color: Colors.white,
                  child: CachedNetworkImage(
                    placeholder: (context, url) => CircularProgressIndicator(),
                    imageUrl: widget.postImageUrl,
                    // height: _height * 0.5,
                    width: _width,
                  ),
                ),
              Container(
                padding: EdgeInsets.all(_width * .02),
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () async {
                        increment = !increment;
                        print(increment);
                        if (increment) {
                          print(widget.postId);
                          await _cloudFirestore.incrementingPostLikes(
                              widget.postId, widget.likes);
                        } else {
                          await _cloudFirestore.incrementingPostLikes(
                              widget.postId, widget.likes - 2);
                        }
                      },
                      child: Icon(
                        Icons.favorite_border,
                      ),
                    ),
                    SizedBox(
                      width: _width * 0.02,
                    ),
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          backgroundColor: Colors.black.withOpacity(0),
                          context: context,
                          isScrollControlled: true,
                          builder: (context) => BottomCommentsSheetBuilder(
                            postId: widget.postId,
                          ),
                        );
                      },
                      child: Container(
                        height: _height * 0.025,
                        width: _width * 0.05,
                        child: SvgPicture.asset('assets/icons/chat.svg'),
                      ),
                    ),
                    // SizedBox(
                    //   width: _width * 0.8,
                    // ),
                  ],
                ),
              ),
              Container(
                  child: Row(children: [
                Text(
                  '${widget.likes} likes',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: widget.width * 0.02,
                ),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      backgroundColor: Colors.black.withOpacity(0),
                      context: context,
                      isScrollControlled: true,
                      builder: (context) => BottomCommentsSheetBuilder(),
                    );
                  },
                  child: Container(
                    child: Text(
                      '${widget.comments}',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ])),
            ])),
        SizedBox(
          child: Container(height: _height * 0.02, color: Color(0xffE6E3E3)),
        )
      ],
    ));
  }
}

// SinglePost(
//                         name: 'FoodFood',
//                         time: '28 mins',
//                         description:
//                             'A bite of Bhatura, just the size, oozing with the '
//                             'chole is pure decadence The flavour burst in '
//                             'your mouth, hot at first, tangy after. \n\n'
//                             'See full recipe...See more',
//                         image: Image.asset('assets/images/chole_bhature.jpg'),
//                         likes: 1812,
//                         comments: 113,
//                         width: _width),
//                     SizedBox(
//                       height: 15,
//                     ),
//                     SinglePost(
//                         name: 'FoodFood',
//                         time: '1 Nov at 12:44 pm',
//                         description: '#SizzlingSunday Ab luft uthaiye dal ke'
//                             'saath gosht ka! Try this robust & rich Dal Gosht'
//                             'recipe, It\'ll surely you\'re your heart! \n\n'
//                             'Watch full recipe...See more',
//                         image: Image.asset('assets/images/dal_gosht.jpg'),
//                         likes: 317,
//                         comments: 21,
//                         width: _width)
