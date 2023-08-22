import 'package:flutter/material.dart';

class MYLIST extends StatelessWidget {
  const MYLIST({super.key});

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
              "My List",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          padding: const EdgeInsets.only(left: 5, right: 5),
          color: Colors.transparent,
          width: double.infinity,
          height: 250,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image(
                      height: 250,
                      width: 150,
                      image: AssetImage("assets/witcher.jpg"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image(
                      height: 250,
                      width: 150,
                      image: AssetImage("assets/witcher.jpg"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image(
                      height: 250,
                      width: 150,
                      image: AssetImage("assets/witcher.jpg"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image(
                      height: 250,
                      width: 150,
                      image: AssetImage("assets/witcher.jpg"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image(
                      height: 250,
                      width: 150,
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
