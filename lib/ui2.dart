import 'package:flutter/material.dart';
import 'package:project/ui3.dart';

class cat extends StatefulWidget {
  const cat({super.key});

  @override
  State<cat> createState() => _catState();
}

class _catState extends State<cat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext){
            return dog();
          }));
        },child: Icon(Icons.arrow_forward_ios_outlined),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('lib/photos/lhostel.jpeg')
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
                Text("for both \n girls and boys ",style: TextStyle(
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
