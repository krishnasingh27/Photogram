import 'package:flutter/material.dart';
import 'package:photogram/modules/add_post/view/add_post.dart';
import 'package:photogram/modules/chat/view/chat.dart';
import 'package:photogram/modules/home/view/home.dart';
import 'package:photogram/modules/profile/view/profile.dart';
import 'package:photogram/modules/search/view/search.dart';

class RoomMainScreen extends StatefulWidget {
  const RoomMainScreen({super.key});

  @override
  State<RoomMainScreen> createState() => _RoomMainScreenState();
}

enum RoomIcons { home, search, addPost, chat, profile }

class _RoomMainScreenState extends State<RoomMainScreen> {
  RoomIcons currentSelection = RoomIcons.home;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: enumToBody[currentSelection], bottomNavigationBar: bottomNav());
  }

  static const Map enumToBody = {
    RoomIcons.home: Home(),
    RoomIcons.search: Search(),
    RoomIcons.addPost: AddPost(),
    RoomIcons.chat: Chat(),
    RoomIcons.profile: Profile()
  };

  static const Map indexToEnum = {
    0: RoomIcons.home,
    1: RoomIcons.search,
    2: RoomIcons.addPost,
    3: RoomIcons.chat,
    4: RoomIcons.profile
  };

  static const Map enumToIcon = {
    RoomIcons.home: "assets/home.png",
    RoomIcons.search: "assets/search.png",
    RoomIcons.chat: "assets/chat.png",
    RoomIcons.profile: "assets/profile.png"
  };

  BottomNavigationBar bottomNav() {
    return BottomNavigationBar(
        onTap: (i) {
          currentSelection = indexToEnum[i];
          setState(() {});
        },
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: [
          commonNavBar(RoomIcons.home),
          commonNavBar(RoomIcons.search),
          getPost(),
          commonNavBar(RoomIcons.chat),
          commonNavBar(RoomIcons.profile),
        ]);
  }

  BottomNavigationBarItem commonNavBar(RoomIcons roomIcons) {
    return BottomNavigationBarItem(
        icon: Image.asset(
          enumToIcon[roomIcons],
          height: 15,
          color: currentSelection == roomIcons ? Colors.blue : null,
        ),
        label: " ");
  }

  BottomNavigationBarItem getPost() {
    return BottomNavigationBarItem(
        icon: Container(
          height: 40,
          width: 70,
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                  colors: [Color(0xffFF00D6), Color(0xffFF4D00)],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft),
              borderRadius: BorderRadius.circular(20)),
          child: Center(child: const Icon(Icons.add)),
        ),
        label: " ");
  }
}
