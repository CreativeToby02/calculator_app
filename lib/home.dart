import 'package:flutter/material.dart';
import 'button.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);
  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: null,
          icon: Icon(Icons.calculate, color: Colors.white70),
        ),
        title: Text(
          'Calculator',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.only(top: 100, left: 8, right: 25, bottom: 2),
            alignment: Alignment.bottomRight,
            child: SizedBox(
              child: Text(
                '457',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, left: 8, right: 10, bottom: 10),
            alignment: Alignment.bottomRight,
            width: 350,
            child: SizedBox(
              child: Text(
                '457',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 50,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 5.0),
              color: Colors.white,
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: RoundIcon(
                            onPressed: () {
                              ;
                            },
                            color: Colors.grey.shade600,
                            child: Text(
                              'AC',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                            ),
                          ),
                        ),
                        Expanded(
                          child: RoundIcon(
                            color: Colors.grey.shade600,
                            child: Text(
                              'C',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                            ),
                          ),
                        ),
                        Expanded(
                          child: RoundIcon(
                            color: Colors.grey.shade600,
                            child: Text(
                              '+/-',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                            ),
                          ),
                        ),
                        Expanded(
                          child: RoundIcon(
                            color: Colors.grey.shade600,
                            child: Text(
                              '%',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: RoundIcon(
                            color: Colors.white,
                            child: Text(
                              '7',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.black),
                            ),
                          ),
                        ),
                        Expanded(
                          child: RoundIcon(
                            color: Colors.white,
                            child: Text(
                              '8',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.black),
                            ),
                          ),
                        ),
                        Expanded(
                          child: RoundIcon(
                            color: Colors.white,
                            child: Text(
                              '9',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.black),
                            ),
                          ),
                        ),
                        Expanded(child: RoundIcon(color: Colors.blue.shade300)),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: RoundIcon(
                            color: Colors.white,
                            child: Text(
                              '4',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.black),
                            ),
                          ),
                        ),
                        Expanded(
                          child: RoundIcon(
                            color: Colors.white,
                            child: Text(
                              '5',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.black),
                            ),
                          ),
                        ),
                        Expanded(
                          child: RoundIcon(
                            color: Colors.white,
                            child: Text(
                              '6',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.black),
                            ),
                          ),
                        ),
                        Expanded(child: RoundIcon(color: Colors.blue.shade300)),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: RoundIcon(
                            color: Colors.white,
                            child: Text(
                              '1',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.black),
                            ),
                          ),
                        ),
                        Expanded(
                          child: RoundIcon(
                            color: Colors.white,
                            child: Text(
                              '2',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.black),
                            ),
                          ),
                        ),
                        Expanded(
                          child: RoundIcon(
                            color: Colors.white,
                            child: Text(
                              '3',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.black),
                            ),
                          ),
                        ),
                        Expanded(
                          child: RoundIcon(
                            color: Colors.blue.shade300,
                            child: Text(
                              '-',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: RoundIcon(
                            color: Colors.white,
                            child: Text(
                              '0',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.black),
                            ),
                          ),
                        ),
                        Expanded(
                          child: RoundIcon(
                            color: Colors.white,
                            child: Text(
                              '.',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.black),
                            ),
                          ),
                        ),
                        Expanded(
                          child: RoundIcon(
                            color: Colors.blue,
                            child: Text(
                              '=',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                            ),
                          ),
                        ),
                        Expanded(
                          child: RoundIcon(
                            color: Colors.blue.shade300,
                            child: Text(
                              '+',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
