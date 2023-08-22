import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RESULTPAGE extends StatefulWidget {
  double bmi;
  RESULTPAGE({super.key, required this.bmi});

  @override
  State<RESULTPAGE> createState() => _RESULTPAGEState();
}

class _RESULTPAGEState extends State<RESULTPAGE> {
  TextEditingController textfield = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: textfield,
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      label: Text("Enter password"),
                      hintText: "Minimum 8 characters",
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.clear),
                      )),
                  obscureText: true,
                  obscuringCharacter: "*",
                  keyboardType: TextInputType.number,
                  onChanged: (String) {
                    print("this is the text from the textfield $String");
                  },
                  onEditingComplete: () {
                    print(
                        "this is the final submission from the textfield ${textfield.text}");
                  },
                ),
                TextButton(
                    onPressed: () {
                      textfield.clear();
                      setState(() {});
                    },
                    child: const Text("clear text fleid")),
                const Text(
                  "Your BMI is...",
                  style: TextStyle(fontSize: 60, color: Colors.pinkAccent),
                ),
                Text(
                  "BMI: ${widget.bmi.toString()}",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 55,
                      color: Colors.pinkAccent),
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
