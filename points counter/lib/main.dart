import 'package:flutter/material.dart';

void main() {
  runApp(pointscounter());
}

class pointscounter extends StatefulWidget {
  @override
  State<pointscounter> createState() => _pointscounterState();
}

class _pointscounterState extends State<pointscounter> {
  int num1 = 0;

  int num2 = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text(
            'Points Counter',
            style: TextStyle(fontSize: 22),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text(
                        'Team A',
                        style: TextStyle(color: Colors.black, fontSize: 35),
                      ),
                      Text(
                        '$num1',
                        style:
                            const TextStyle(color: Colors.black, fontSize: 150),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size(25, 40),
                            backgroundColor: Colors.orange),
                        onPressed: () {
                          setState(() {
                            ++num1;
                            if (num1 >= 99) {
                              num1 = 0;
                            }
                            ;
                          });
                        },
                        child: const Text(
                          'Add 1 point',
                          style: TextStyle(fontSize: 17, color: Colors.black),
                        ),
                      ),
                 Container(
                        child:const Text('    '),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize:const Size(25, 40),
                            backgroundColor: Colors.orange),
                        onPressed: () {
                          setState(() {
                            num1 += 2;
                            if (num1 >= 99) {
                              num1 = 0;
                            }
                          });
                        },
                        child:const  Text(
                          'Add 2 point',
                          style: TextStyle(fontSize: 17, color: Colors.black),
                        ),
                      ),
                      Container(
                        child:const Text('    '),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize:const Size(25, 40),
                            backgroundColor: Colors.orange),
                        onPressed: () {
                          setState(() {
                            num1 += 3;
                            if (num1 >= 99) {
                              num1 = 0;
                            }
                          });
                        },
                        child:const Text(
                          'Add 3 point',
                          style: TextStyle(fontSize: 17, color: Colors.black),
                        ),
                      )
                    ],
                  ),
                   Container(
                    height: 500,
                    child: VerticalDivider(
                      color: Color(0xffE6E6E6),
                      thickness: 2,
                      width: 12,
                      indent: 17,
                      endIndent: 12,
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        'Team B',
                        style: TextStyle(color: Colors.black, fontSize: 35),
                      ),
                      Text(
                        '$num2',
                        style: TextStyle(color: Colors.black, fontSize: 150),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(25, 40),
                            backgroundColor: Colors.orange),
                        onPressed: () {
                          setState(() {
                            num2++;
                            if (num2 >= 99) {
                              num2 = 0;
                            }
                            ;
                          });
                        },
                        child: Text(
                          'Add 1 point',
                          style: TextStyle(fontSize: 17, color: Colors.black),
                        ),
                      ),
                      Container(
                        child: Text('    '),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(25, 40),
                            backgroundColor: Colors.orange),
                        onPressed: () {
                          setState(() {
                            num2 += 2;
                            if (num2 >= 99) {
                              num2 = 0;
                            }
                            ;
                          });
                        },
                        child: Text(
                          'Add 2 point',
                          style: TextStyle(fontSize: 17, color: Colors.black),
                        ),
                      ),
                      Container(
                        child: Text('    '),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(25, 40),
                            backgroundColor: Colors.orange),
                        onPressed: () {
                          setState(() {
                            num2 += 3;
                            if (num2 >= 99) {
                              num2 = 0;
                            }
                            ;
                          });
                        },
                        child: Text(
                          'Add 3 point',
                          style: TextStyle(fontSize: 17, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 2,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(170, 49), backgroundColor: Colors.orange),
              onPressed: () {
                setState(() {
                  num1 = 0;

                  num2 = 0;
                });
              },
              child: Text(
                'Reset',
                style: TextStyle(fontSize: 17, color: Colors.black),
              ),
            ),
            Spacer(
              flex: 1,
            )
          ],
        ),
      ),
    );
  }
}
