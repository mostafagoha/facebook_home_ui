import 'package:facebook_layout/shared/componants.dart';
import 'package:flutter/material.dart';


class WebPutPost extends StatelessWidget {
  const WebPutPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      padding: const EdgeInsets.symmetric(
          vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                width: 10.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width * .3,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'What\'s in your mind',
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(top: 3.0),
                      child: Icon(
                        Icons.search,
                        color: Colors.black.withOpacity(0.4),
                        size: 25,
                      ),
                    ),
                    border: UnderlineInputBorder(
                        borderRadius:
                        BorderRadius.circular(20.0),
                        borderSide: BorderSide.none),
                  ),
                ),
              ),
            ],
          ),
          myDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              putPostContainer(
                  icon: Icons.video_call,
                  text: 'Live Video',
                  iconColor: Colors.red),
              putPostContainer(
                  icon: Icons.photo_library,
                  text: 'Photo/Video',
                  iconColor: Colors.green),
              putPostContainer(
                  icon: Icons.face_rounded,
                  text: 'Feeling/Activity',
                  iconColor: Colors.yellow),
            ],
          ),
        ],
      ),
    );
  }
}
