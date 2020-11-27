import 'package:cook_chef/Screens/Account/AccountSettings.dart';
import 'package:cook_chef/Screens/UploadPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cook_chef/Firestore/CloudFirestore.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cook_chef/Widgets/BottomCommentsSheet.dart';
import 'package:flutter_svg/flutter_svg.dart';

FirebaseFirestore _firestore = FirebaseFirestore.instance;

class AccountPage extends StatefulWidget {
  static const String id = 'account_page';
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  String name, imageUrl, bio;
  Future<void> gettingInfos() async {
    DocumentSnapshot documentSnapshot;
    String uid = FirebaseAuth.instance.currentUser.uid;
    try {
      documentSnapshot =
          await FirebaseFirestore.instance.collection('Users').doc(uid).get();
      name = documentSnapshot.data()['username'];
      bio = documentSnapshot.data()['bio'];
      imageUrl = documentSnapshot.data()['imageLink'];
      print(documentSnapshot.data());
    } catch (e) {
      print(e);
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    gettingInfos();
  }

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.width;
    //gettingInfos();
    return SafeArea(
      child: RefreshIndicator(
        onRefresh: () async {
          await gettingInfos();

          setState(() {});
        },
        child: ListView(
          children: <Widget>[
            // Container(
            //   margin: EdgeInsets.all(8.0),
            //   child: Text('account_name'),
            // ),
            SizedBox(
              height: _height * 0.05,
            ),
            Column(
              children: <Widget>[
                if (imageUrl != null)
                  CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                    radius: _width * 0.15,
                  ),
                if (name != null)
                  Container(
                    margin: EdgeInsets.symmetric(vertical: _height * 0.02),
                    child: Text(
                      name,
                      style: TextStyle(
                        fontSize: _height * 0.05,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                if (bio != null) Text('$bio'),
                Container(
                  margin: EdgeInsets.only(top: _height * 0.02),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffC1C1C1)),
                    borderRadius:
                        BorderRadius.all(Radius.circular(_width * 0.05)),
                    color: Color(0xffD7D7D7),
                  ),
                  width: _width * 0.9,
                  height: _height * 0.1,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        AccountSettings.id,
                      );
                    },
                    child: Center(
                      child: Text(
                        'Edit Profile',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: _height * 0.03),
              height: 1,
              width: _width,
              color: Colors.grey[300],
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, UploadPage.id);
              },
              child: Container(
                margin: EdgeInsets.all(_width * 0.03),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Upload',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: _height * 0.04),
                        ),
                        // Icon(
                        //   Icons.keyboard_arrow_down,
                        // ),
                      ],
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.account_circle,
                          size: 40,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'What\'s your recipe?',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      height: 1,
                      width: _width,
                      color: Colors.grey[300],
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //   children: <Widget>[
                    //     Text(
                    //       'Photos',
                    //       style: TextStyle(color: Colors.green),
                    //     ),
                    //     Text('|'),
                    //     Text(
                    //       'Videos',
                    //       style: TextStyle(color: Colors.blue),
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: FeedsStream(
                width: _width,
              ),
            ),
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
            if (post.get('uid') == FirebaseAuth.instance.currentUser.uid) {
              final username = post.get('username');
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
            }
          }
          return ListView(
            cacheExtent: 1000,
            physics: AlwaysScrollableScrollPhysics(),
            shrinkWrap: true,
            children: singlePost,
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
  CloudFirestore _cloudFirestore = CloudFirestore();
  bool increment = false;
  int commentsSize = 0;
  @override
  void initState() {
    super.initState();
    getLikedInfo();
    getCommentsLength();
  }

  Future<void> getCommentsLength() async {
    commentsSize = await _firestore
        .collection('feeds')
        .doc(widget.postId)
        .collection('comments')
        .get()
        .then((value) => value.size);
    setState(() {});
  }

  Future<void> getLikedInfo() async {
    DocumentSnapshot snapshot = await _firestore
        .collection('feeds')
        .doc(widget.postId)
        .collection('likes')
        .doc(FirebaseAuth.instance.currentUser.uid)
        .get();
    try {
      increment = snapshot.data()['liked'];
    } catch (e) {}
    setState(() {});
  }

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
                    size: _width * 0.1,
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
                              color: Colors.black)),
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
                      horizontal: _width * .05, vertical: _height * 0.01),
                  child: Text(widget.description)),
              if (widget.postImageUrl != null)
                Container(
                  padding: EdgeInsets.all(_width * 0.05),
                  color: Colors.white,
                  child: Container(
                    height: _height * 0.55,
                    width: _width,
                    child: CachedNetworkImage(
                      placeholder: (context, url) =>
                          CircularProgressIndicator(),
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
                          print(widget.postId);
                          await _cloudFirestore.incrementingPostLikes(
                              widget.postId, widget.likes, increment);
                        } else {
                          await _cloudFirestore.incrementingPostLikes(
                              widget.postId, widget.likes - 2, increment);
                        }
                      },
                      child: increment
                          ? Icon(
                              Icons.favorite,
                              color: Colors.greenAccent,
                            )
                          : Icon(
                              Icons.favorite_outline_sharp,
                              color: Colors.greenAccent,
                            ),
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
                        showModalBottomSheet(
                          backgroundColor: Colors.black.withOpacity(0),
                          context: context,
                          isScrollControlled: true,
                          builder: (context) => BottomCommentsSheetBuilder(
                            postId: widget.postId,
                          ),
                        );
                        getCommentsLength();
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
                      '$commentsSize',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    // SizedBox(
                    //   width: _width * 0.8,
                    // ),
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
    ));
  }
}
