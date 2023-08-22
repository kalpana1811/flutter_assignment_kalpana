import 'package:flutter/material.dart';
import 'package:netflix_app/shared/widget/MYLIST_TAB.dart';

class PROFILE_NEW extends StatefulWidget {
  const PROFILE_NEW({super.key});

  @override
  State<PROFILE_NEW> createState() => _PROFILE_NEWState();
}

class _PROFILE_NEWState extends State<PROFILE_NEW> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.black,
          height: 100,
          width: double.infinity,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 4),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Container(
                        height: 70,
                        width: 70,
                        child: Image.asset("assets/images.png"),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Kalpana",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 4),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Container(
                        height: 70,
                        width: 70,
                        child: Image.asset("assets/images.png"),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Kalpana",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 4),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Container(
                        height: 70,
                        width: 70,
                        child: Image.asset("assets/images.png"),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Kalpana",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 4),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Container(
                        height: 70,
                        width: 70,
                        child: Image.asset("assets/images.png"),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Kalpana",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 4),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Container(
                        height: 70,
                        width: 70,
                        child: Image.asset("assets/images.png"),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Kalpana",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 4),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Container(
                        height: 70,
                        width: 70,
                        child: Image.asset("assets/images.png"),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Kalpana",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.black,
          height: 100,
          width: double.infinity,
          child: const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 100, right: 20),
                child: Icon(
                  Icons.edit_outlined,
                  color: Color.fromARGB(255, 233, 232, 232),
                  size: 30,
                ),
              ),
              Text(
                "Manage Profiles",
                style: TextStyle(
                    color: Color.fromARGB(255, 233, 232, 232),
                    fontWeight: FontWeight.bold,
                    fontSize: 23),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8, left: 8, top: 8),
          child: Container(
            height: 65,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Color.fromARGB(255, 32, 32, 32),
            ),
            child: const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Notifications",
                        style: TextStyle(
                            fontSize: 23,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 175),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8, left: 8, top: 5),
          child: Container(
            height: 65,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Color.fromARGB(255, 32, 32, 32),
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Icon(
                    Icons.playlist_add_check,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "My List",
                        style: TextStyle(
                            fontSize: 23,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 225),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => MYLIST_TAB()));
                    },
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8, left: 8, top: 5),
          child: Container(
            height: 65,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Color.fromARGB(255, 32, 32, 32),
            ),
            child: const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "App Settings",
                        style: TextStyle(
                            fontSize: 23,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 175),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8, left: 8, top: 5),
          child: Container(
            height: 65,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Color.fromARGB(255, 32, 32, 32),
            ),
            child: const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Icon(
                    Icons.person_outline,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Account",
                        style: TextStyle(
                            fontSize: 23,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 220),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8, left: 8, top: 5),
          child: Container(
            height: 65,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: const Color.fromARGB(255, 32, 32, 32),
            ),
            child: const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Icon(
                    Icons.help_outline_rounded,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Help",
                        style: TextStyle(
                            fontSize: 23,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 255),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Container(
            width: double.infinity,
            color: Colors.black,
            height: 50,
            child: const Padding(
              padding: EdgeInsets.only(left: 160),
              child: Text(
                "Sign Out",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        )
      ],
    );
  }
}
