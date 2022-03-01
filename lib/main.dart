import 'package:flutter/material.dart';
import 'package:flutter_xculture/pages/community/commudetail_page.dart';
import 'package:flutter_xculture/pages/community/commuhome_page.dart';
import 'package:flutter_xculture/pages/community/commupost_page.dart';
import 'package:flutter_xculture/pages/event/eventdetail_page.dart';
import 'package:flutter_xculture/pages/event/eventhome_page.dart';
import 'package:flutter_xculture/pages/forum/detail_page.dart';
import 'package:flutter_xculture/pages/event/eventpost_page.dart';
import 'package:flutter_xculture/pages/forum/post_page.dart';
import 'package:flutter_xculture/pages/forum/seeall_page.dart';
import 'package:flutter_xculture/pages/profile/profile_screen.dart';
import 'package:flutter_xculture/pages/splash/splash_screen.dart';
import 'package:flutter_xculture/routes.dart';
import 'package:flutter_xculture/theme.dart';
import 'pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme(),
      // theme: ThemeData(
      //   // This is the theme of your application.
      //   //
      //   // Try running your application with "flutter run". You'll see the
      //   // application has a blue toolbar. Then, without quitting the app, try
      //   // changing the primarySwatch below to Colors.green and then invoke
      //   // "hot reload" (press "r" in the console where you ran "flutter run",
      //   // or simply save your changes to "hot reload" in a Flutter IDE).
      //   // Notice that the counter didn't reset back to zero; the application
      //   // is not restarted.
      //   primarySwatch: Colors.red,
      //   fontFamily: "Poppins",
      // ),
      //home: MainPage(),
      //home: DetailPage(),
      //home: PostPage(),
      //home: SeeallPage(),
      //home: EventPostPage(),
      //home: EventDetailPage(),
      //home: CommuPostPage(),
      //home: CommuDetailPage(),
      //home: EventHomePage(),
      //home: CommuHomePage(),
      //signin - signup
      initialRoute: SplashScreen.routeName,
      routes: routes,
      //home: ProfileScreen(),
    );
  }
}


