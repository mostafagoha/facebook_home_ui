import 'package:facebook_layout/shared/componants.dart';
import 'package:facebook_layout/widgets/web_widgets/home_left_side.dart';
import 'package:facebook_layout/widgets/web_widgets/home_right_side.dart';
import 'package:facebook_layout/widgets/web_widgets/web_app_bar.dart';
import 'package:facebook_layout/widgets/web_widgets/web_friends_stories.dart';
import 'package:facebook_layout/widgets/web_widgets/web_put_post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class FaceBookWebLayout extends StatelessWidget {
  const FaceBookWebLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.1),
      appBar: const PreferredSize(
          child: WebAppBar(),
          preferredSize: Size.fromHeight(100.0)),
      body: Container(
        child: Row(
          children: [
            MediaQuery.of(context).size.width < 1090
                ? Container()
                :const Expanded(
                    flex: 2,
                    child: HomeLeftSide(),
                  ),
            Expanded(
              flex: MediaQuery.of(context).size.width < 1090 ? 2 : 3,
              child: Container(
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width < 1090
                        ? MediaQuery.of(context).size.width * .05
                        : 0,
                    top: 15),
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width < 890
                        ? MediaQuery.of(context).size.width * .2
                        : 0),
                width: MediaQuery.of(context).size.width * .5,
                height: double.infinity,
                child: ListView(
                  children: [
                    const WebFriendsStories(),
                    const SizedBox(
                      height: 40.0,
                    ),
                    const WebPutPost(),
                    postDetails(
                      hasPhoto: true,
                      userImage: 'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                      userName: 'Mostafa Goha',
                    ),
                    postDetails(
                      hasPhoto: false,
                      hasMoreOnePhoto: false,
                      userImage: 'https://images.pexels.com/photos/2078265/pexels-photo-2078265.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                      userName: 'Mostafa Mostafa',
                    ),
                    postDetails(
                      hasMoreOnePhoto: true,
                      hasPhoto: false,
                      userImage: 'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                      userName: 'Ali',
                    ),
                    postDetails(
                      hasPhoto: true,
                      userImage: 'https://images.pexels.com/photos/937481/pexels-photo-937481.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                      userName: 'Saad Ali',
                    ),
                    postDetails(
                      hasPhoto: false,
                      hasMoreOnePhoto: false,
                      userImage: 'https://images.pexels.com/photos/2811087/pexels-photo-2811087.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                      userName: 'Ahmed Ahmed',
                    ),
                  ],
                ),
              ),
            ),
            MediaQuery.of(context).size.width < 890
                ? Container()
                :const Expanded(
                    flex: 2,
                    child: HomeRightSide(),
                  ),
          ],
        ),
      ),
    );
  }
}
