import 'package:flutter/material.dart';

class Down extends StatelessWidget {
  const Down({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.black,
          height: 70,
          width: double.infinity,
          child: const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.account_box_sharp,
                  size: 60,
                  color: Colors.pinkAccent,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 4, right: 13, top: 15),
                child: Text(
                  "KALPANA",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
        Container(
          color: Colors.black,
          height: 90,
          width: double.infinity,
          child: const Row(
            children: [
              Image(
                  height: 80,
                  width: 150,
                  image: AssetImage("assets/black_mirror.jpg")),
              Padding(
                padding: EdgeInsets.only(top: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Squid Game",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "9 Episodes | 1.4 GB",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 65),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
        Container(
          color: Colors.black,
          height: 90,
          width: double.infinity,
          child: const Row(
            children: [
              Image(
                  height: 80,
                  width: 150,
                  image: AssetImage("assets/black_mirror.jpg")),
              Padding(
                padding: EdgeInsets.only(top: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Squid Game",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "9 Episodes | 1.4 GB",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 65),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
        Container(
          color: Colors.black,
          height: 90,
          width: double.infinity,
          child: const Row(
            children: [
              Image(
                  height: 80,
                  width: 150,
                  image: AssetImage("assets/black_mirror.jpg")),
              Padding(
                padding: EdgeInsets.only(top: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Squid Game",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "9 Episodes | 1.4 GB",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 65),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
        Container(
          color: Colors.black,
          height: 90,
          width: double.infinity,
          child: const Row(
            children: [
              Image(
                  height: 80,
                  width: 150,
                  image: AssetImage("assets/black_mirror.jpg")),
              Padding(
                padding: EdgeInsets.only(top: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Squid Game",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "9 Episodes | 1.4 GB",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 65),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
        Container(
          color: Colors.black,
          height: 90,
          width: double.infinity,
          child: const Row(
            children: [
              Image(
                  height: 80,
                  width: 150,
                  image: AssetImage("assets/black_mirror.jpg")),
              Padding(
                padding: EdgeInsets.only(top: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Squid Game",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "9 Episodes | 1.4 GB",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 65),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
