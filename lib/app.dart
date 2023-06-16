import 'package:flutter/material.dart';
import 'package:xyz/main.dart';

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            width: 800,
            decoration:
                BoxDecoration(border: Border.all(color: Colors.red, width: 3)),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                height: 390,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.blue, width: 2)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 30,
                        width: 250,
                        decoration: BoxDecoration(
                            color: Colors.blue.shade100,
                            border: Border.all(color: Colors.black)),
                        child: Center(
                            child: Text(
                          'STRAWBERRY PAVLOVA',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ))),
                    SizedBox(height: 30),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue.shade100,
                          border: Border.all(color: Colors.black)),
                      width: 300,
                      child: Text(
                        'pavlove is a meringue based desert'
                        'named after Russian ballarinda '
                        'Anna pavlove'
                        'pavlov features a crisp crust '
                        'and , soft light inside ,topped'
                        ' with fruit and whipped creame',
                        softWrap: true,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.blue.shade100,
                            border: Border.all(color: Colors.red, width: 4)),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.star),
                                  Icon(Icons.star),
                                  Icon(Icons.star),
                                  Icon(Icons.star),
                                  Icon(Icons.star)
                                ],
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              Text('170 Reviews')
                            ])),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.blue.shade100,
                          border: Border.all(color: Colors.black)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Icon(Icons.phone),
                              SizedBox(height: 10),
                              Row(
                                children: [Text('CONTACT ')],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [Text('+99-445566')],
                              )
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              Icon(Icons.timer),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [Text('PREP')],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [Text('25 min')],
                              )
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              Icon(Icons.cut),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [Text('FEEDS')],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [Text('4-6 people')],
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: 10),
              Image.network(
                'https://media.istockphoto.com/id/489765636/photo/pavlova-meringue-cake-with-fresh-berries.jpg?s=612x612&w=0&k=20&c=GhboDLzPst8Djx2ImA38JDFBwKOIYdRRdMyI934O_dA=',
                width: 460,
                height: 500,
                fit: BoxFit.cover,
              )
            ]),
          ),
        ),
      ),
    );
  }
}
