import 'package:flutter/material.dart';

class HomeRightSide extends StatelessWidget {
  const HomeRightSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      height: double.infinity,
      child: Container(
        width: MediaQuery.of(context).size.width * .25,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, right: 10, bottom: 20),
              child: Row(
                children: [
                  Text(
                    'Contacts',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87.withOpacity(0.7)),
                  ),
                  const Spacer(),
                  Icon(Icons.video_call,
                      color: Colors.black87.withOpacity(0.7)),
                  const SizedBox(
                    width: 15,
                  ),
                  Icon(Icons.search,
                      color: Colors.black87.withOpacity(0.7)),
                  const SizedBox(
                    width: 15,
                  ),
                  Icon(Icons.more_horiz,
                      color: Colors.black87.withOpacity(0.7)),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * .82,
              width: MediaQuery.of(context).size.width * .25,
              child: ListView.separated(
                separatorBuilder: (context, index) =>
                const SizedBox(
                  height: 15,
                ),
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                shape: BoxShape.circle),
                          ),
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 1,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'User Name ${index}',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
