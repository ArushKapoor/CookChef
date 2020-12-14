import 'package:cook_chef/Models/AccountPageArgument.dart';
import 'package:cook_chef/Models/Arguments.dart';
import 'package:cook_chef/Screens/Account/AccountSettings.dart';
import 'package:cook_chef/Screens/Recipe/IngredientsPage.dart';
import 'package:cook_chef/Screens/UploadPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cook_chef/Auth/AuthenticationService.dart';
import 'package:provider/provider.dart';
import 'package:cook_chef/Widgets/SinglePost.dart';

import '../FeedPage.dart';

FirebaseFirestore _firestore = FirebaseFirestore.instance;

class AccountPage extends StatefulWidget {
  static const String id = 'account_page';
  final bool ownUser;
  AccountPage({this.ownUser = false});
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  int currentIndex = 2;
  bool hasTapped = false;

  final tabs = [
    FeedPage(),
    IngredientsPage(),
    AccountPage(
      ownUser: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final AccountArgument args = ModalRoute.of(context).settings.arguments;
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.width;
    final _size = MediaQuery.of(context).size.aspectRatio;
    String uid = context.watch<AuthenticationService>().uniqueId;
    QuerySnapshot snapshot = context.watch<QuerySnapshot>();
    String meraUserName, meraUserBio, meraUserImage;
    final users = snapshot.docs;
    //print(widget.ownUser);

    for (var user in users) {
      String auser = user.get('uid');
      if (widget.ownUser != true) uid = args.outerUserUid;
      // print(args.outerUserUid);
      if (auser == uid) {
        meraUserName = user.get('username');
        meraUserBio = user.get('bio');
        meraUserImage = user.get('imageLink');
      }
    }
    //gettingInfos();
    return SafeArea(
      child: Scaffold(
        appBar: (widget.ownUser)
            ? null
            : AppBar(
                automaticallyImplyLeading: (currentIndex == 2) ? true : false,
                title: Text('ChefGuru'),
                centerTitle: true,
                flexibleSpace: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[
                        Color(0xff088378),
                        Color(0xff00AC58)
                      ])),
                ),
              ),
        bottomNavigationBar: (widget.ownUser)
            ? null
            : BottomNavigationBar(
                selectedItemColor: Colors.black,
                unselectedItemColor: Colors.black,
                backgroundColor: Colors.white,
                type: BottomNavigationBarType.fixed,
                currentIndex: currentIndex,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: (currentIndex == 0)
                        ? Icon(
                            Icons.home,
                            size: _size * 60,
                          )
                        : Icon(
                            Icons.home_outlined,
                            size: _size * 60,
                          ),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: (currentIndex == 1)
                        ? Image.asset(
                            'assets/icons/filledIngredient.png',
                            height: _size * 50,
                          )
                        : Image.asset(
                            'assets/icons/OutlinedIngredients.png',
                            height: _size * 50,
                          ),
                    label: 'Let\'s Cook',
                  ),
                  BottomNavigationBarItem(
                    icon: (currentIndex != 2)
                        ? Icon(
                            Icons.account_circle_outlined,
                            size: _size * 60,
                          )
                        : Icon(
                            Icons.account_circle,
                            size: _size * 60,
                          ),
                    label: 'Account',
                  ),
                ],
                onTap: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
        body: (currentIndex == 2)
            ? ListView(
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
                      if (meraUserImage != null)
                        CircleAvatar(
                          backgroundImage: NetworkImage(meraUserImage),
                          radius: _width * 0.15,
                        ),
                      if (meraUserName != null)
                        Container(
                          margin:
                              EdgeInsets.symmetric(vertical: _height * 0.02),
                          child: Text(
                            meraUserName,
                            style: TextStyle(
                              fontSize: _height * 0.05,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      if (meraUserBio != null) Text('$meraUserBio'),
                      if (widget.ownUser == true)
                        Container(
                          margin: EdgeInsets.only(top: _height * 0.02),
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffC1C1C1)),
                            borderRadius: BorderRadius.all(
                                Radius.circular(_width * 0.05)),
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
                  if (widget.ownUser == true)
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, UploadPage.id,
                            arguments: UploadPageArguments(toUpdate: false));
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
                                if (meraUserImage != null)
                                  CircleAvatar(
                                      backgroundImage:
                                          NetworkImage(meraUserImage),
                                      radius: _width * 0.06),
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
                  FeedsStream(
                    width: _width,
                    outerUseruid:
                        widget.ownUser != true ? args.outerUserUid : false,
                  ),
                ],
              )
            : tabs[currentIndex],
      ),
    );
  }
}

class FeedsStream extends StatelessWidget {
  final width;
  final outerUseruid;
  FeedsStream({this.width, this.outerUseruid});
  @override
  Widget build(BuildContext context) {
    String uid = context.watch<AuthenticationService>().uniqueId;
    return StreamBuilder<QuerySnapshot>(
        stream: _firestore.collection('feeds').orderBy('timestamp').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.green)),
            );
          }
          final posts = snapshot.data.docs;
          List<SinglePost> singlePost = [];
          for (var post in posts) {
            String uid = FirebaseAuth.instance.currentUser.uid;
            if (outerUseruid != false) uid = outerUseruid;
            if (post.get('uid') == uid) {
              //final username = post.get('username');
              final recipe = post.get('recipe');
              final imageUrl = post.get('imageUrl');
              Map likes = post.get('likes');
              final Timestamp timestamp = post.get('timestamp');
              final postId = post.id;
              final postUserUid = post.get('uid');
              final commentsCount = post.get('comments');
              int nOfLikes = likes['likes'];
              bool liked;
              try {
                liked = likes['$uid'];
              } catch (e) {
                print(e);
              }
              QuerySnapshot snapshots = context.watch<QuerySnapshot>();
              String meraUserImage, meraUserName;

              final users = snapshots.docs;
              for (var user in users) {
                final auser = user.get('uid');

                if (auser == postUserUid) {
                  meraUserName = user.get('username');
                  meraUserImage = user.get('imageLink');
                }
              }
              singlePost.add(
                SinglePost(
                  name: meraUserName,
                  postImageUrl: imageUrl,
                  likes: nOfLikes,
                  time: timestamp.toDate().toString(),
                  description: recipe,
                  width: width,
                  comments: commentsCount,
                  userImage: meraUserImage,
                  postId: postId,
                  liked: liked,
                  onAccountPage: outerUseruid != false ? false : true,
                  likesMap: likes,
                ),
              );
            }
          }
          return Column(
            children: singlePost,
          );
        });
  }
}

// class SinglePost extends StatefulWidget {
//   final String name, time, description;
//   final int comments, likes;
//   final double width;
//   final Image image;
//   final String postImageUrl;
//   final String postId;
//   final bool liked;
//   SinglePost(
//       {this.comments,
//       this.description,
//       this.image,
//       this.likes,
//       this.name,
//       this.time,
//       this.width,
//       this.postImageUrl,
//       this.postId,
//       this.liked});

//   @override
//   _SinglePostState createState() => _SinglePostState();
// }

// class _SinglePostState extends State<SinglePost> {
//   CloudFirestore _cloudFirestore = CloudFirestore();
//   bool increment = false;
//   int commentsSize = 0;
//   @override
//   void initState() {
//     super.initState();
//     getCommentsLength();
//   }

//   Future<void> getCommentsLength() async {
//     commentsSize = await _firestore
//         .collection('feeds')
//         .doc(widget.postId)
//         .collection('comments')
//         .get()
//         .then((value) => value.size);
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     final _height = MediaQuery.of(context).size.height;
//     final _width = MediaQuery.of(context).size.width;
//     if (widget.liked != null) increment = widget.liked;
//     return SafeArea(
//         child: Column(
//       children: [
//         Container(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               SizedBox(
//                 height: _height * 0.02,
//               ),
//               Row(
//                 children: <Widget>[
//                   SizedBox(
//                     width: _width * 0.02,
//                   ),
//                   Icon(
//                     Icons.account_circle,
//                     size: _width * 0.1,
//                   ),
//                   SizedBox(
//                     width: _width * 0.01,
//                   ),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       Text(widget.name,
//                           style: TextStyle(
//                               fontSize: _height * 0.02,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black)),
//                       Text(
//                         widget.time,
//                         style: TextStyle(
//                             fontSize: _height * 0.01, color: Colors.black54),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//               Container(
//                   margin: EdgeInsets.symmetric(
//                       horizontal: _width * .05, vertical: _height * 0.01),
//                   child: Text(widget.description)),
//               if (widget.postImageUrl != null)
//                 Container(
//                   padding: EdgeInsets.all(_width * 0.05),
//                   color: Colors.white,
//                   child: Container(
//                     height: _height * 0.55,
//                     width: _width,
//                     child: CachedNetworkImage(
//                       placeholder: (context, url) =>
//                           CircularProgressIndicator(),
//                       imageUrl: widget.postImageUrl,
//                     ),
//                   ),
//                 ),
//               Container(
//                 padding: EdgeInsets.all(_width * .02),
//                 child: Row(
//                   children: <Widget>[
//                     GestureDetector(
//                       onTap: () async {
//                         setState(() {
//                           increment = !increment;
//                         });
//                         if (increment) {
//                           print(widget.postId);
//                           await _cloudFirestore.incrementingPostLikes(
//                               widget.postId, widget.likes, increment);
//                         } else {
//                           await _cloudFirestore.incrementingPostLikes(
//                               widget.postId, widget.likes - 2, increment);
//                         }
//                       },
//                       child: increment
//                           ? Icon(
//                               Icons.favorite,
//                               color: Colors.greenAccent,
//                             )
//                           : Icon(
//                               Icons.favorite_outline_sharp,
//                               color: Colors.greenAccent,
//                             ),
//                     ),

//                     SizedBox(
//                       width: _width * 0.002,
//                     ),
//                     Text(
//                       '${widget.likes}',
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     ),
//                     SizedBox(
//                       width: _width * 0.03,
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         showModalBottomSheet(
//                           backgroundColor: Colors.black.withOpacity(0),
//                           context: context,
//                           isScrollControlled: true,
//                           builder: (context) => BottomCommentsSheetBuilder(
//                             postId: widget.postId,
//                           ),
//                         );
//                         getCommentsLength();
//                       },
//                       child: Container(
//                         height: _height * 0.025,
//                         width: _width * 0.05,
//                         child: SvgPicture.asset('assets/icons/chat.svg'),
//                       ),
//                     ),
//                     SizedBox(
//                       width: _width * 0.01,
//                     ),
//                     Text(
//                       '$commentsSize',
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     ),
//                     // SizedBox(
//                     //   width: _width * 0.8,
//                     // ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//         SizedBox(
//           child: Container(height: _height * 0.02, color: Color(0xffE6E3E3)),
//         )
//       ],
//     ));
//   }
// }
