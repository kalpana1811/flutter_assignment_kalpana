import 'package:flutter/material.dart';
import 'package:netflix_app/shared/widget/down.dart';

class Downloads extends StatefulWidget {
  const Downloads({super.key});

  @override
  State<Downloads> createState() => _DownloadsState();
}

class _DownloadsState extends State<Downloads> {
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
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 60, left: 13),
                  child: Text(
                    "My Downloads",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                // Padding(
                //   padding: EdgeInsets.only(left: 13, right: 13),
                //   child: Text(
                //     "Edit",
                //     style: TextStyle(
                //         color: Colors.white,
                //         fontWeight: FontWeight.bold,
                //         fontSize: 20),
                //   ),
                // ),
                Padding(
                  padding: EdgeInsets.only(left: 13, right: 13),
                  child: Icon(
                    Icons.edit,
                    color: Colors.white,
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
              children: [Down()],
            ),
          ),
        ));
  }
}
