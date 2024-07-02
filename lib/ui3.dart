import 'package:flutter/material.dart';
import 'package:project/home.dart';

class dog extends StatefulWidget {
  const dog({super.key});

  @override
  State<dog> createState() => _dogState();
}

class _dogState extends State<dog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext){
            return rat();
          }));
        },child: Text('next'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('lib/photos/hostel3.webp')
            )
        ),
        child:  Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(10)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Find the best \n hostel's & pg's \n near you ",style: TextStyle(
                    fontSize: 30,color: Colors.white70,fontWeight: FontWeight.bold
                ),),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
