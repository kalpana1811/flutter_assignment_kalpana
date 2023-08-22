import 'package:flutter/material.dart';
import 'package:netflix_app/screen/Comingsoon.dart';
import 'package:netflix_app/screen/Downloads.dart';
import 'package:netflix_app/screen/More.dart';
import 'package:netflix_app/screen/Search.dart';
import 'package:netflix_app/screen/homePage.dart';

class NAVBAR extends StatefulWidget {
  const NAVBAR({super.key});

  @override
  State<NAVBAR> createState() => _NAVBARState();
}

class _NAVBARState extends State<NAVBAR> {
  int currentindex = 0;
  final List screens = [
    const homePage(),
    const Search(),
    const Comingsoon(),
    const Downloads(),
    const More()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   leading: Image.asset(
      //     "assets/netflix_logo0.png",
      //   ),
      //   actions: [
      //     Padding(
      //       padding: const EdgeInsets.all(11.0),
      //       child: GestureDetector(
      //         onTap: () {},
      //         child: const Text(
      //           "TV Shows",
      //           style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      //         ),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(11.0),
      //       child: GestureDetector(
      //         onTap: () {},
      //         child: const Text("Movies",
      //             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(11.0),
      //       child: GestureDetector(
      //         onTap: () {},
      //         child: const Text("My List",
      //             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
      //       ),
      //     )
      //   ],
      // ),
      body: screens[currentindex],
      bottomNavigationBar: SizedBox(
        height: 60,
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor: Colors.transparent,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,
            onTap: (value) {
              setState(() {
                currentindex = value;
              });
            },
            //     onTap: (index) {
            //       print("THisis the current index $index");
            //     },
            items: const [
              BottomNavigationBarItem(label: "HOME", icon: Icon(Icons.home)),
              BottomNavigationBarItem(
                  label: "SEARCH",
                  icon: Icon(Icons.search),
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                  label: "COMING SOON", icon: Icon(Icons.desktop_mac_outlined)),
              BottomNavigationBarItem(
                  label: "DOWNLOAD", icon: Icon(Icons.download)),
              BottomNavigationBarItem(
                  label: "MORE", icon: Icon(Icons.more_vert)),
            ]),
      ),
    ));
  }
}
