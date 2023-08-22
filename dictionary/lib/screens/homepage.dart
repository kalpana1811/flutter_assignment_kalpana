import 'package:dict_app/service/dictclient.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DictClient dclient = DictClient();
  TextEditingController dtc = TextEditingController();
  String meaning = "null";
  callapi(q) async {
    meaning = await dclient.search(query: q);
    setState(() {});
  }

  @override
  // void initstate() {
  //   super.initState();
  // }

  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("DICTIONARY"),
        centerTitle: true,
      ),
      body: SizedBox(
        // color: const Color.fromARGB(255, 186, 85, 119),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextField(
                controller: dtc,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    suffixIcon: IconButton(
                        onPressed: () {
                          dtc.clear();
                        },
                        icon: const Icon(Icons.clear)),
                    label: const Text("DICT"),
                    hintText: "Enter a Word Here"),
                // style: ,
                // keyboardType: TextInputType.number,
                onChanged: (string) {
                  // print(textfield.text); //controller--> text
                  print("This is the text from the textfield $string");
                },
                onEditingComplete: () {
                  // print(
                  //     // "this is the final submission from the textfield ${txtfld.text}");
                },
              ),
              SizedBox(height: 20),
              //searchbutton
              OutlinedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 63, 90, 136))),
                onPressed: () {
                  callapi(dtc.text);
                  // dtc.clear();
                  setState(() {});
                },
                child: const Text(
                  "Search",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.3,
                color: Colors.amber,
                padding: EdgeInsets.all(6),
                child: Center(
                  child: Text(
                    meaning,
                    style: const TextStyle(
                        fontSize: 15,
                        // color: Colors.white,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
