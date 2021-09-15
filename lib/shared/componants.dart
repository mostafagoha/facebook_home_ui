
import 'package:facebook_layout/widgets/web_widgets/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget notificationIcons({
  IconData? icon,
  Color? iconColor,
}) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 5),
    height: 40,
    width: 40,
    decoration: BoxDecoration(
      color: Colors.grey.withOpacity(0.3),
      shape: BoxShape.circle,
    ),
    child: Center(
      child: Icon(
        icon,
        size: 25,
        color: iconColor,
      ),
    ),
  );
}

Widget putPostContainer({
  required IconData icon,
  required String text,
  required Color iconColor,
}) =>
    Row(
      children: [
        Icon(
          icon,
          color: iconColor,
          size: 30,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ],
    );



Widget myDivider() => Container(
      height: .5,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      color: Colors.grey,
    );

Widget postDetails({
  bool hasPhoto = true,
  bool hasMoreOnePhoto = true,
  required String userName,
  required String userImage,
}) =>
    Container(
      width: double.infinity,
      decoration:const BoxDecoration(
        color: Colors.white,
      ),
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      margin: const EdgeInsets.only(top: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(
                            userImage,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          userName,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                        Row(
                          children: [
                            const Text(
                              '2h',
                              style: TextStyle(fontSize: 12),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 3),
                              width: 3,
                              height: 3,
                              decoration: const BoxDecoration(
                                color: Colors.grey,
                                shape: BoxShape.circle,
                              ),
                            ),
                            const FaIcon(
                              FontAwesomeIcons.globe,
                              size: 15,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Icon(
                  Icons.more_horiz,
                  color: Colors.black87.withOpacity(0.7),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
                'post content post content post content post content post content post content post content post content post content post content post content post content post content post content post content post content post content '),
          ),
          hasPhoto == true
              ? Container(
                  width: double.infinity,
                  height: 400,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://images.pexels.com/photos/217250/pexels-photo-217250.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                        fit: BoxFit.fill),
                  ),
                )
              : hasMoreOnePhoto == true
                  ? const CustomCarousel()
                  : Container(),
          Container(
            padding: const EdgeInsets.only(top: 15.0, right: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '3 comment',
                  style: TextStyle(color: Colors.black.withOpacity(0.7)),
                ),
              ],
            ),
          ),
          myDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              putPostReact(
                icon: Icons.favorite,
                text: 'Like',
              ),
              putPostReact(
                icon: Icons.comment,
                text: 'Comment',
              ),
              putPostReact(
                icon: Icons.share,
                text: 'Share',
              ),
            ],
          )
        ],
      ),
    );

Widget putPostReact({
  required IconData icon,
  required String text,
}) =>
    Row(
      children: [
        Icon(
          icon,
          color: Colors.black.withOpacity(.7),
          size: 20,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black.withOpacity(.7),
          ),
        ),
      ],
    );


