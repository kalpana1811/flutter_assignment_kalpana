import 'package:flutter/material.dart';

class ORIGINALS extends StatelessWidget {
  const ORIGINALS({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Text(
              "Netflix originals",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        // const SizedBox(
        //   height: 5,
        // ),
        Container(
          // padding: const EdgeInsets.only(left: 5, right: 5),
          color: Colors.transparent,
          width: double.infinity,
          height: 450,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image(
                      height: 450,
                      width: 270,
                      image: AssetImage("assets/witcher.jpg"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image(
                      height: 450,
                      width: 270,
                      image: AssetImage("assets/witcher.jpg"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image(
                      height: 450,
                      width: 270,
                      image: AssetImage("assets/witcher.jpg"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image(
                      height: 450,
                      width: 270,
                      image: AssetImage("assets/witcher.jpg"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image(
                      height: 350,
                      width: 270,
                      image: AssetImage("assets/witcher.jpg"),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
