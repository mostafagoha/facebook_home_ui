
import 'package:facebook_layout/shared/componants.dart';
import 'package:facebook_layout/widgets/mobile_widgets/mobile_home_tab_view.dart';
import 'package:facebook_layout/widgets/mobile_widgets/mobile_other_tabs.dart';
import 'package:flutter/material.dart';

class FacebookMobileLayout extends StatefulWidget {
  const FacebookMobileLayout({Key? key}) : super(key: key);

  @override
  State<FacebookMobileLayout> createState() => _FacebookMobileLayoutState();
}

class _FacebookMobileLayoutState extends State<FacebookMobileLayout>
    with SingleTickerProviderStateMixin {

  TabController? controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 6, vsync: this,initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.8),
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white,
              pinned: true,
              floating: true,
              title: Container(
                height: 30,
                width: 150,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Facebook_Logo_%282019%29.svg/2560px-Facebook_Logo_%282019%29.svg.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              actions: [
                notificationIcons(icon: Icons.search, iconColor: Colors.black),
                Padding(
                  padding: const EdgeInsets.only(right: 5.0),
                  child: notificationIcons(icon: Icons.message, iconColor: Colors.black),
                ),
              ],
              elevation: 0.0,
              bottom: TabBar(
                //padding:const EdgeInsets.only(bottom: 5.0),
                indicatorColor: Colors.blueAccent,
                indicatorWeight: 2.0,
                controller: controller,
                tabs: [
                  const Tab(
                    icon: Icon(Icons.home, size: 35, color: Colors.blueAccent,),
                  ),
                  Tab(
                    icon: Icon(Icons.group, size: 35, color: Colors.black.withOpacity(0.5),),
                  ),
                  Tab(
                    icon: Icon(Icons.ondemand_video_outlined, size: 35, color: Colors.black.withOpacity(0.5),),
                  ),
                  Tab(
                    icon: Icon(Icons.margin, size: 35, color: Colors.black.withOpacity(0.5),),
                  ),
                  Tab(
                    icon: Icon(Icons.notifications_none_rounded, size: 35, color: Colors.black.withOpacity(0.5),),
                  ),
                  Tab(
                    icon: Icon(Icons.menu, size: 35, color: Colors.black.withOpacity(0.5),),
                  ),
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
              controller: controller,
              children:const [
                HomeTab(),
                OtherTabs(),
                OtherTabs(),
                OtherTabs(),
                OtherTabs(),
                OtherTabs(),
              ],
            ),
      ),
    );
  }
}
