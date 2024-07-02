import 'package:flutter/material.dart';
import 'package:project/ui2.dart';
import 'package:project/ui3.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext){
            return cat();
          }));
        },child: Icon(Icons.arrow_forward_ios_outlined),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
       decoration: BoxDecoration(
         image: DecorationImage(
           fit: BoxFit.fill,
           image: AssetImage('lib/photos/hostel1.jpg'),
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
               Text("Find the best \n hostel & pg's \n near you ",style: TextStyle(
                 fontSize: 30,color: Colors.white70,fontWeight: FontWeight.bold
               ),),
               Padding(
                 padding: const EdgeInsets.only(top: 40),
                 child: ElevatedButton(onPressed: (){

                 }, child: Text('Enable Notifications')),
               ),
               Column(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   TextButton(onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (BuildContext){
                       return dog();
                     }));
                   }, child: Text("skip",style: TextStyle(fontSize: 23,color: Colors.orange[300]),)),
                 ],
               )
             ],
           ),
          ),
       ),
      ),
    );
  }
}
