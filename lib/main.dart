// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// void main()
// {
//   runApp(MaterialApp(home: MyWidget(),));
// }

// class MyWidget extends StatelessWidget{
//   Widget build(BuildContext context){
//     return Scaffold(
//       body: Row(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//         BlueBox(),
//         BlueBox(),
//         BlueBox(),
//       ],
//       ),
//     );
//   }
// }

// class BlueBox extends StatelessWidget{
//   Widget build(BuildContext context){

//   return Center(
//     child: Container(
//       width:250,
//       height:50,
//       child: Center(child: Text('medha',style: TextStyle(color:Colors.white ))),
//       decoration: BoxDecoration
//       (
//       color: Colors.blue,
//       border: Border.all(),
//       ),
//     ),
//   );
// }
// }

import 'package:flutter/material.dart';
import 'package:xyz/app.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter layout demo',
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  // const Myapp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter nav bar'),
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp2()),
              );
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.red, width: 4)),
              child: Image.asset(
                'assets/image/Screenshot (15).png',
                fit: BoxFit.contain,
              ),
            ),
            const Center(
              child: Text('MY NAME IS MEDHAVI'),
            ),
            SizedBox(width: 500, height: 20),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.red, width: 4)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(child: Text('Okohama city')),
                      Text('Adresss')
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Icon(Icons.star,
                                  color: Colors.red), //Icon(Icons.nat),
                            ],
                          ),
                          Column(
                            children: [
                              Text('42'), //Text('Anthony'),
                            ],
                          ),
                          //Text('Anthony'),
                        ],
                      ),
                      Text('happy soul')
                    ],
                  )
                ],
              ),
              //  padding:EdgeInsets.only(left: 450,right: 450,top: 30)
            ),
            SizedBox(width: 500, height: 20),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.red, width: 4)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Icon(Icons.call, color: Colors.blue),
                      Text(
                        'CALL',
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      Icon(Icons.route, color: Colors.blue),
                      Text(
                        'ROUTE',
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Icon(Icons.share, color: Colors.blue),
                      Text(
                        'SHARE',
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(width: 500, height: 20),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.red, width: 4)),
              child: Text(
                'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
                'Alps. Situated 1,578 meters above sea level, it is one of the '
                'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
                'half-hour walk through pastures and pine forest, leads you to the '
                'lake, which warms to 20 degrees Celsius in the summer. Activities '
                'enjoyed here include rowing, and riding the summer toboggan run.',
                softWrap: true,
              ),
            )
          ],
        ),
      ),
    );
  }
}
