import 'package:facebook_layout/shared/componants.dart';
import 'package:facebook_layout/widgets/mobile_widgets/mobile_friends_stories.dart';
import 'package:flutter/material.dart';

import 'mobile_put_post.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
            child:const MobilePutPost(),
          ),
          Container(
            color: Colors.white,
            height: 200,
            width: double.infinity,
            padding:const EdgeInsets.symmetric(vertical: 10),
            margin:const EdgeInsets.only(top: 10),
            child:const MobileFriendsStories(),
          ),
          postDetails(
            hasPhoto: true,
            userName: 'Mostafa Goha',
            userImage:
            'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
          ),
          postDetails(
            hasMoreOnePhoto: false,
            hasPhoto: false,
            userName: 'Mostafa Mostafa',
            userImage:
            'https://images.pexels.com/photos/2078265/pexels-photo-2078265.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
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
    );
  }
}
