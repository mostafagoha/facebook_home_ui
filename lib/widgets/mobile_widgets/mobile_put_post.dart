import 'package:facebook_layout/shared/componants.dart';
import 'package:flutter/material.dart';


class MobilePutPost extends StatelessWidget {
  const MobilePutPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 45,
              height: 45,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                  fit: BoxFit.cover,
                ),
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width - 80,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding:
                  const EdgeInsets.only(top: 10, left: 15),
                  hintText: 'What\'s in your mind?',
                  hintStyle:
                  const TextStyle(color: Colors.black, fontSize: 18),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
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
                icon: Icons.videocam_rounded,
                text: 'Live',
                iconColor: Colors.red),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              width: 1,
              height: 20,
              color: Colors.grey,
            ),
            putPostContainer(
                icon: Icons.photo_library,
                text: 'Photo',
                iconColor: Colors.green),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              width: 1,
              height: 20,
              color: Colors.grey,
            ),
            putPostContainer(
                icon: Icons.video_call,
                text: 'Room',
                iconColor: Colors.indigoAccent),
          ],
        ),
      ],
    );
  }
}
