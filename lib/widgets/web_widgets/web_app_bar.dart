import 'package:facebook_layout/shared/componants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const  FaIcon(
                    FontAwesomeIcons.facebook,
                    color: Colors.blue,
                    size: 40,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  MediaQuery.of(context).size.width <= 1165
                      ? notificationIcons(icon: Icons.search)
                      : Container(
                    width: MediaQuery.of(context).size.width * .2,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Search Facebook',
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
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * .05,
          ),
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.home,
                    color: Colors.blue,
                    size: 35,
                  ),
                  Icon(
                    Icons.ondemand_video_rounded,
                    color: Colors.grey,
                    size: 35,
                  ),
                  Icon(
                    Icons.shopping_bag,
                    color: Colors.grey,
                    size: 35,
                  ),
                  Icon(
                    Icons.group_work_outlined,
                    color: Colors.grey,
                    size: 35,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MediaQuery.of(context).size.width <= 1165
                      ? const SizedBox()
                      : Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                              fit: BoxFit.cover,
                            ),
                            shape: BoxShape.circle),
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      const Text(
                        'Mostafa',
                        style:
                        TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  notificationIcons(icon: Icons.grid_on_rounded),
                  notificationIcons(icon: Icons.message),
                  notificationIcons(icon: Icons.notifications),
                  notificationIcons(icon: Icons.arrow_drop_down_sharp),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
