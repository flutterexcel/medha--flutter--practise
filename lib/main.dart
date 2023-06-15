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



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
    // const Myapp({super.key});
    Widget build(BuildContext context)
    {
      return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter nav bar'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [Image.
            asset('lib/image/Screenshot (15).png', height: 200,),
                
               
                const Center(
                child: Text('MY NAME IS MEDHAVI'),
              ),    
              Container(child: Row(children: [
                Column(crossAxisAlignment:CrossAxisAlignment.start,
                children: [Container(child: Text('Okohama city')), Text('Adresss')],)
               
                ,Icon(Icons.star, color: Colors.red),
                Text('42')
              ],),
              //  padding:EdgeInsets.only(left: 450,right: 450,top: 30)
              ),
              Row(children: 
              [Column(children: [Icon(Icons.call , color: Colors.blue),Text('CALL' ,style: TextStyle(color: Colors.blue),)],)
              ,SizedBox(width: 20),
              Padding(
                padding: EdgeInsets.only(left: 70,right: 70),
                child: Column(children: [Icon(Icons.route, color: Colors.blue ),Text('ROUTE',style: TextStyle(color:Colors.blue),)],),
              )
              ,SizedBox(width: 20,),
              Column(children: [Icon(Icons.share, color: Colors.blue),Text('SHARE', style: TextStyle(color: Colors.blue),)],)],
                      
              ),
               Container(
                 child: Text('Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
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
      ),
    );
    }
}