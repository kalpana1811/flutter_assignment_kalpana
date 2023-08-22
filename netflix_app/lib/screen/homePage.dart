import 'package:flutter/material.dart';
import 'package:netflix_app/shared/widget/MyList.dart';
import 'package:netflix_app/shared/widget/nf_stack.dart';
import 'package:netflix_app/shared/widget/originals.dart';
import 'package:netflix_app/shared/widget/preview.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBodyBehindAppBar: true,
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              leading: Image.asset(
                "assets/netflix_logo0.png",
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(11.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "TV Shows",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(11.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: const Text("Movies",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(11.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: const Text("My List",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold)),
                  ),
                )
              ],
            ),
            //     bottomNavigationBar: SizedBox(
            //       height: 60,
            //       child: BottomNavigationBar(
            //           type: BottomNavigationBarType.fixed,
            //           showSelectedLabels: false,
            //           showUnselectedLabels: false,
            //           backgroundColor: Colors.transparent,
            //           selectedItemColor: Colors.white,
            //           unselectedItemColor: Colors.white,

            //           //     onTap: (index) {
            //           //       print("THisis the current index $index");
            //           //     },
            //           items: const [
            //             BottomNavigationBarItem(label: "HOME", icon: Icon(Icons.home)),
            //             BottomNavigationBarItem(
            //                 label: "SEARCH",
            //                 icon: Icon(Icons.search),
            //                 backgroundColor: Colors.white),
            //             BottomNavigationBarItem(
            //                 label: "COMING SOON",
            //                 icon: Icon(Icons.desktop_mac_outlined)),
            //             BottomNavigationBarItem(
            //                 label: "DOWNLOAD", icon: Icon(Icons.download)),
            //             BottomNavigationBarItem(
            //                 label: "MORE", icon: Icon(Icons.more_vert)),
            //           ]),
            //     ),
            body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                color: Colors.black,
                width: double.infinity,
                // height: double.infinity,
                child: const Column(
                  children: [NfstacK(), PREVIEW(), MYLIST(), ORIGINALS()],
                ),
              ),
            )));
  }
}
