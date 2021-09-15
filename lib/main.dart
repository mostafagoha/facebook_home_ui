import 'package:facebook_layout/layouts/facebook_web_layout/facebook_web_layout.dart';
import 'package:flutter/material.dart';
import 'layouts/facebook_mobile_layout/facebook_mobile_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home:Builder(builder: (BuildContext context){
        var width = MediaQuery.of(context).size.width;

        print(width.toInt());

        return MediaQuery.of(context).size.width <=810?const FacebookMobileLayout():const FaceBookWebLayout();
      }),
    );
  }
}

