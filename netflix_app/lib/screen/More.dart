import 'package:flutter/material.dart';
import 'package:netflix_app/shared/widget/Profiles.dart';

import 'package:netflix_app/shared/widget/Profiles.dart';

class More extends StatefulWidget {
  const More({super.key});

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: GestureDetector(
              onTap: () {}, child: const Icon(Icons.arrow_back)),
          actions: const [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 160, left: 5),
                  child: Text(
                    "Profiles & More",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ),
              ],
            ),
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            color: Colors.black,
            width: double.infinity,
            // height: double.infinity,
            child: const Column(
              children: [PROFILE_NEW()],
            ),
          ),
        ));
  }
}
