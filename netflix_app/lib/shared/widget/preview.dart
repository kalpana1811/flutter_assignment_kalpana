import 'package:flutter/material.dart';

class PREVIEW extends StatelessWidget {
  const PREVIEW({super.key});

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
              "Previews",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          // padding: EdgeInsets.all(8),
          color: Colors.transparent,
          width: double.infinity,
          height: 100,
          child: ListView(
            padding: const EdgeInsets.all(8),
            scrollDirection: Axis.horizontal,
            children: const [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/witcher.jpg"),
              ),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/violet_evergarden.jpg"),
              ),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/stranger_things.jpg"),
              ),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/sintel.jpg"),
              ),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/thirteen_reasons.jpg"),
              ),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/orignal (7).jpeg"),
              )
            ],
          ),
        ),
      ],
    );
  }
}
