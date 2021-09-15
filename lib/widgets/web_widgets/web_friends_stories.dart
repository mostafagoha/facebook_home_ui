import 'package:flutter/material.dart';

class WebFriendsStories extends StatelessWidget {
  const WebFriendsStories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          if(index==0){
            return Container(
              padding: const EdgeInsets.only(bottom: 10),
              height: 180,
              width: MediaQuery.of(context).size.width*.082,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Column(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 2.5),
                        height: 130,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10.0),
                            topLeft: Radius.circular(10.0),
                          ),
                        ),
                      ),
                      const Text(
                        'Create Story',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: Colors.white, width: 3.0),
                    ),
                    child:const Center(
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
          return webFriendsStories(context);
        },
      ),
    );
  }
  Widget webFriendsStories(BuildContext context) => Stack(
    children: [
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 2.5),
        width: MediaQuery.of(context).size.width * .082,
        height: 180,
        decoration: BoxDecoration(
          color: Colors.white,
          image: const DecorationImage(
            image: NetworkImage(
                'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 2.5),
        padding: const EdgeInsets.all(10.0),
        width: MediaQuery.of(context).size.width * .082,
        height: 180,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.4),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(color: Colors.blue, width: 2)),
            ),
            const Text(
              'Mostafa Goha',
              style: TextStyle(color: Colors.white, fontSize: 12),
            )
          ],
        ),
      ),
    ],
  );
}
