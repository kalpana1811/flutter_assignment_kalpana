import 'package:bmi_app/screens/bmi_result.dart';
import 'package:bmi_app/screens/login.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

calc_bmi({double height = 0, double wght = 0}) {
  double bmi = wght / ((height / 100) * (height / 100));
  return bmi;
}

class _FirstPageState extends State<FirstPage> {
  double slidervalue = 100;
  double wght = 30;
  int age = 5;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text("BMI CALCULATOR"),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(10, 15, 34, 3),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  color: Colors.black,
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: const Column(
                    children: [
                      Icon(
                        Icons.male,
                        size: 100,
                        color: Colors.white,
                      ),
                      Text(
                        "MALE",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  color: Colors.black,
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: const Column(
                    children: [
                      Icon(
                        Icons.female,
                        size: 100,
                        color: Colors.white,
                      ),
                      Text(
                        "FEMALE",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
              // color: Colors.red,
              height: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width * 0.87,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "HEIGHT",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        slidervalue.toString().substring(0, 5),
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 13, top: 5),
                        child: Text(
                          "cm",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      )
                    ],
                  ),
                  Slider(
                    min: 100,
                    max: 250,
                    value: slidervalue,
                    onChanged: (value) {
                      slidervalue = value;
                      setState(() {});
                    },
                    activeColor: Colors.cyan,
                    inactiveColor: const Color.fromARGB(255, 251, 91, 144),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.045,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  color: Colors.black,
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Column(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "WEIGHT",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            wght.toString().substring(0, 4),
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 50,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    wght--;
                                    setState(() {});
                                  },
                                  icon: const Icon(
                                    Icons.remove_circle,
                                    color: Colors.white,
                                    size: 50,
                                  )),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.04,
                              ),
                              IconButton(
                                  onPressed: () {
                                    wght++;
                                    setState(() {});
                                  },
                                  icon: const Icon(
                                    Icons.add_circle,
                                    color: Colors.white,
                                    size: 50,
                                  ))
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  color: Colors.black,
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Column(
                    children: [
                      const Text(
                        "AGE",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        age.toString(),
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {
                                age--;
                                setState(() {});
                              },
                              icon: const Icon(
                                Icons.remove_circle,
                                color: Colors.white,
                                size: 50,
                              )),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.04,
                          ),
                          IconButton(
                              onPressed: () {
                                age++;
                                setState(() {});
                              },
                              icon: const Icon(
                                Icons.add_circle,
                                color: Colors.white,
                                size: 50,
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (_) => RESULTPAGE(
                //             bmi: calc_bmi(height: slidervalue, wght: wght))));

                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const LOGINPAGE()));
              },
              child: Container(
                color: Colors.pinkAccent,
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.87,
                child: const Center(
                  child: Text(
                    "CALCULATE",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
