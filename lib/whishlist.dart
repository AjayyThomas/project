import 'package:flutter/material.dart';

class page3 extends StatefulWidget {
  const page3({super.key});

  @override
  State<page3> createState() => _page1State();
}

class _page1State extends State<page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image(image: AssetImage('lib/photos/clickheart.jpg'),
        width: 150,
        height: 150,
      ),
      Text("No hostels or pg's in your wishlist",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
      Text("It is simple! Just tap on  to add any product",),
      Center(child: Text('to your wishlist')),
      ElevatedButton(onPressed: (){
        
      }, child: Text('View'))
    ],
  ),
),
    );
  }
}
