import 'package:flutter/material.dart';
import 'button.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);
  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  late int firstNum;
  late int secondNum;
  late String? history = '';
  late String operation;
  late String result;
  late String? textToDisplay = '';

  void btnClick(String btnValue) {
    print(btnValue);
    if (btnValue == 'AC') {
      firstNum = 0;
      secondNum = 0;
      result = '';
      textToDisplay = '';
      history = '';
    } else if (btnValue == 'C') {
      firstNum = 0;
      secondNum = 0;
      result = '';
      textToDisplay = '';
    } else if (btnValue == '<') {
      result = textToDisplay!.substring(0, textToDisplay!.length - 1);
    } else if (btnValue == '+' ||
        btnValue == '-' ||
        btnValue == 'x' ||
        btnValue == '/') {
      firstNum = int.parse(textToDisplay!);
      result = '';
      operation = btnValue;
    } else if (btnValue == '=') {
      secondNum = int.parse(textToDisplay!);
      if (operation == '+') {
        result = (firstNum + secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '-') {
        result = (firstNum - secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == 'x') {
        result = (firstNum * secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '/') {
        result = (firstNum / secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
    } else {
      result = int.parse(textToDisplay! + btnValue).toString();
    }
    setState(() {
      textToDisplay = result;
    });
  }

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
                history!,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20, left: 8, right: 25, bottom: 2),
            alignment: Alignment.bottomRight,
            child: SizedBox(
              child: Text(
                textToDisplay!,
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
                            callback: btnClick,
                            text: 'AC',
                            color: Colors.grey.shade500,
                            style: TextStyle(fontSize: 23, color: Colors.white),
                          ),
                        ),
                        Expanded(
                          child: RoundIcon(
                            callback: btnClick,
                            text: 'C',
                            color: Colors.grey.shade500,
                            style: TextStyle(fontSize: 23, color: Colors.white),
                          ),
                        ),
                        Expanded(
                          child: RoundIcon(
                            callback: btnClick,
                            text: '+/-',
                            color: Colors.grey.shade500,
                            style: TextStyle(fontSize: 23, color: Colors.white),
                          ),
                        ),
                        Expanded(
                          child: RoundIcon(
                            callback: btnClick,
                            text: '<',
                            color: Colors.grey.shade500,
                            style: TextStyle(fontSize: 23, color: Colors.white),
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
                            callback: btnClick,
                            text: '7',
                            color: Colors.white,
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                        ),
                        Expanded(
                          child: RoundIcon(
                            callback: btnClick,
                            text: '8',
                            color: Colors.white,
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                        ),
                        Expanded(
                          child: RoundIcon(
                            callback: btnClick,
                            text: '9',
                            color: Colors.white,
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                        ),
                        Expanded(
                          child: RoundIcon(
                            callback: btnClick,
                            text: '/',
                            color: Colors.blue.shade300,
                            style: TextStyle(fontSize: 25, color: Colors.black),
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
                            callback: btnClick,
                            text: '4',
                            color: Colors.white,
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                        ),
                        Expanded(
                          child: RoundIcon(
                            callback: btnClick,
                            text: '5',
                            color: Colors.white,
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                        ),
                        Expanded(
                          child: RoundIcon(
                            callback: btnClick,
                            text: '6',
                            color: Colors.white,
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                        ),
                        Expanded(
                          child: RoundIcon(
                            callback: btnClick,
                            text: 'x',
                            color: Colors.blue.shade300,
                            style: TextStyle(fontSize: 25, color: Colors.black),
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
                            callback: btnClick,
                            text: '1',
                            color: Colors.white,
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                        ),
                        Expanded(
                          child: RoundIcon(
                            callback: btnClick,
                            text: '2',
                            color: Colors.white,
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                        ),
                        Expanded(
                          child: RoundIcon(
                            callback: btnClick,
                            text: '3',
                            color: Colors.white,
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                        ),
                        Expanded(
                          child: RoundIcon(
                            callback: btnClick,
                            text: '-',
                            color: Colors.blue.shade300,
                            style: TextStyle(fontSize: 25, color: Colors.black),
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
                            callback: btnClick,
                            text: '0',
                            color: Colors.white,
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                        ),
                        Expanded(
                          child: RoundIcon(
                            callback: btnClick,
                            text: '.',
                            color: Colors.white,
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                        ),
                        Expanded(
                          child: RoundIcon(
                            callback: btnClick,
                            text: '=',
                            color: Colors.blue,
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                        ),
                        Expanded(
                          child: RoundIcon(
                            callback: btnClick,
                            text: '+',
                            color: Colors.blue.shade300,
                            style: TextStyle(fontSize: 25, color: Colors.black),
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
