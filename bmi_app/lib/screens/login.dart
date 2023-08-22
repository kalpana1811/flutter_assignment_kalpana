import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LOGINPAGE extends StatefulWidget {
  const LOGINPAGE({super.key});

  @override
  State<LOGINPAGE> createState() => _LOGINPAGEState();
}

class _LOGINPAGEState extends State<LOGINPAGE> {
  TextEditingController textfield = TextEditingController();
  TextEditingController txtfld = TextEditingController();
  TextEditingController txtpsswd = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      // backgroundColor: const Color.fromARGB(255, 11, 74, 125),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: 300,
              child: TextField(
                controller: txtfld,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    label: Text("Enter username"),
                    hintText: "Minimum 8 characters",
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: IconButton(
                      onPressed: () {
                        textfield.clear();
                        setState(() {});
                      },
                      icon: Icon(Icons.clear),
                    )),
                // obscureText: true,
                // obscuringCharacter: "*",
                keyboardType: TextInputType.number,
                onChanged: (String) {
                  print("this is the text from the textfield $String");
                },
                onEditingComplete: () {
                  print(
                      "this is the final submission from the textfield ${textfield.text}");
                },
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              width: 300,
              child: TextField(
                controller: textfield,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    label: Text("Enter address"),
                    hintText: "Minimum 8 characters",
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: IconButton(
                      onPressed: () {
                        textfield.clear();
                        setState(() {});
                      },
                      icon: Icon(Icons.clear),
                    )),
                // obscureText: true,
                // obscuringCharacter: "*",
                keyboardType: TextInputType.streetAddress,
                onChanged: (String) {
                  print("this is the text from the textfield $String");
                },
                onEditingComplete: () {
                  print(
                      "this is the final submission from the textfield ${textfield.text}");
                },
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              width: 300,
              child: TextField(
                controller: txtpsswd,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    label: Text("Enter password"),
                    hintText: "Minimum 8 characters",
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: IconButton(
                      onPressed: () {
                        txtfld.clear();
                        setState(() {});
                      },
                      icon: Icon(Icons.clear),
                    )),
                obscureText: true,
                obscuringCharacter: "*",
                keyboardType: TextInputType.streetAddress,
                onChanged: (String) {
                  print("this is the text from the textfield $String");
                },
                onEditingComplete: () {
                  print(
                      "this is the final submission from the textfield ${textfield.text}");
                },
              ),
            ),
            Text("Hello Flutter",
                style: GoogleFonts.baloo2(
                    fontSize: 30, fontWeight: FontWeight.bold)),
            // Container(
            //   height: 400,
            //   width: 400,
            //   decoration: BoxDecoration(
            //       gradient: RadialGradient(colors: [
            //     Colors.cyan,
            //     Colors.red,
            //     Colors.yellow,
            //     Colors.black
            //   ])),

            //   // child: const Card(
            //   //   elevation: 20,
            //   //   color: Color.fromARGB(255, 254, 147, 183),
            //   //   shadowColor: Colors.cyan,
            //   //   child: Center(
            //   //     child: Text("Hello flutter"),
            //   //   ),
            //   // ),
            // ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Chip(
                  label: Text(
                    "food",
                    style: TextStyle(fontSize: 25),
                  ),
                  // padding: EdgeInsets.all(15),
                  // labelPadding: EdgeInsets.all(8),
                  avatar: CircleAvatar(
                    child: Text("🎂"),
                  ),
                  deleteIcon: Icon(Icons.delete),
                  deleteIconColor: Colors.cyan,
                ),
                Chip(
                  label: Text(
                    "food",
                    style: TextStyle(fontSize: 25),
                  ),
                  // padding: EdgeInsets.all(15),
                  // labelPadding: EdgeInsets.all(8),
                  avatar: CircleAvatar(
                    child: Text("🎂"),
                  ),
                  deleteIcon: Icon(Icons.delete),
                  deleteIconColor: Colors.cyan,
                ),
                Chip(
                  label: Text(
                    "food",
                    style: TextStyle(fontSize: 25),
                  ),
                  // padding: EdgeInsets.all(15),
                  // labelPadding: EdgeInsets.all(8),
                  avatar: CircleAvatar(
                    child: Text("🎂"),
                  ),
                  deleteIcon: Icon(Icons.delete),
                  deleteIconColor: Colors.cyan,
                ),
              ],
            ),

            SizedBox(
                height: 100,
                width: double.infinity,
                child: ListView(
                  children: [
                    Container(
                        child: ListTile(
                      tileColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(100))),
                      // shape: CircleBorder(
                      //     eccentricity: 1.0,
                      //     side: BorderSide(width: 10, color: Colors.yellow)),
                      focusColor: Colors.cyan,
                      leading: Icon(Icons.skateboarding),
                      title: const Text("Go for skating"),
                      subtitle: const Text("Gone for skating"),
                    ))
                  ],
                )),

            Container(
              
              color: Colors.red,
              width: double.infinity,
              height: 300,
              child: Image.asset(
                "assets/images.jpg",
                fit: BoxFit.cover,
              ),
            
            )
          ],
        ),
      ),
    ));
  }
}

class GoogleFont {}
