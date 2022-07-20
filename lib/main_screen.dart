import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Rows.dart';
import 'calc_button.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String helper = "";
  String result = "";
  String empty = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    helper,
                    style: TextStyle(fontSize: 22, color: Colors.grey.shade700),
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    result,
                    style: TextStyle(
                        fontSize: 27,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CalcButton(
                          text: '7',
                          textColor: Colors.black,
                          fillColor: false,
                          action: () {
                            setState(() {
                              helper = helper + "7";
                            });
                          },
                        ),
                        CalcButton(
                          text: '8',
                          textColor: Colors.black,
                          fillColor: false,
                          action: () {
                            setState(() {
                              helper = helper + "8";
                            });
                          },
                        ),
                        CalcButton(
                          text: '9',
                          textColor: Colors.black,
                          fillColor: false,
                          action: () {
                            setState(() {
                              helper = helper + "9";
                            });
                          },
                        ),
                        CalcButton(
                          text: '*',
                          textColor: Colors.orange,
                          fillColor: false,
                          action: () {
                            setState(() {
                              helper = helper + "*";
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CalcButton(
                          text: '4',
                          textColor: Colors.black,
                          fillColor: false,
                          action: () {
                            setState(() {
                              helper = helper + "4";
                            });
                          },
                        ),
                        CalcButton(
                          text: '5',
                          textColor: Colors.black,
                          fillColor: false,
                          action: () {
                            setState(() {
                              helper = helper + "5";
                            });
                          },
                        ),
                        CalcButton(
                          text: '6',
                          textColor: Colors.black,
                          fillColor: false,
                          action: () {
                            setState(() {
                              helper = helper + "6";
                            });
                          },
                        ),
                        CalcButton(
                          text: '-',
                          textColor: Colors.orange,
                          fillColor: false,
                          action: () {
                            setState(() {
                              helper = helper + "-";
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CalcButton(
                          text: '1',
                          textColor: Colors.black,
                          fillColor: false,
                          action: () {
                            setState(() {
                              helper = helper + "1";
                            });
                          },
                        ),
                        CalcButton(
                          text: '2',
                          textColor: Colors.black,
                          fillColor: false,
                          action: () {
                            setState(() {
                              helper = helper + "2";
                            });
                          },
                        ),
                        CalcButton(
                          text: '3',
                          textColor: Colors.black,
                          fillColor: false,
                          action: () {
                            setState(() {
                              helper = helper + "3";
                            });
                          },
                        ),
                        CalcButton(
                          text: '+',
                          textColor: Colors.orange,
                          fillColor: false,
                          action: () {
                            setState(() {
                              helper = helper + "+";
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              helper = "";
                              result = "";
                            });
                          },
                          child: const Text(
                            'AC',
                            style: TextStyle(
                                fontSize: 50, fontWeight: FontWeight.w300),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            maximumSize: Size(double.infinity, 55),
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              // helper = helper + "=";
                             result = calculate(helper);
                            });
                          },
                          child: const Text(
                            '=',
                            style: TextStyle(
                              fontSize: 50,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            maximumSize: Size(double.infinity, 55),
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                      CalcButton(
                        text: '/',
                        textColor: Colors.orange,
                        fillColor: false,
                        action: () {
                          setState(() {
                            helper = helper + "/";
                          });
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  String calculate(String process) {
    if (process.contains("+")) {
      var plural = process.split("+");
      var finalResult = int.parse(plural[0]) + int.parse(plural[1]);
      return finalResult.toString();
    } else if (process.contains("*")) {
      var multiplication = process.split("*");
      var finalResult = int.parse(multiplication[0]) * int.parse(multiplication[1]);
      return finalResult.toString();
    } else if (process.contains("-")) {
      var subtraction = process.split("-");
      var finalResult = int.parse(subtraction[0]) - int.parse(subtraction[1]);
      return finalResult.toString();
    } else if (process.contains("/")) {
      var dividing = process.split("/");
      var finalResult = int.parse(dividing[0]) / int.parse(dividing[1]);
      return finalResult.toString();
    }else{
      return "Error...";
    }
  }
}
