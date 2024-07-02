import 'package:flutter/material.dart';
import 'package:project/login.dart';

class page4 extends StatefulWidget {
  const page4({super.key});

  @override
  State<page4> createState() => _page4State();
}

class _page4State extends State<page4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(''),
              radius: 100,
            ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: ElevatedButton(
               style: ButtonStyle(
                 backgroundColor: MaterialStateProperty.all(Colors.cyanAccent)
               ),
               onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (BuildContext){
                   return log();
                 }));
             }, child: Text('Login or SignUp',style: TextStyle(fontSize: 15),),
             ),
           )
          ],
        ),
      ),
    );
  }
}
