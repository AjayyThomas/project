import 'package:flutter/material.dart';
import 'package:project/signup.dart';

class log extends StatefulWidget {
  const log({super.key});

  @override
  State<log> createState() => _logState();
}

class _logState extends State<log> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 150),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 150),
              child: SizedBox(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue
                      ),
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20,bottom: 10),
              child: SizedBox(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.blue
                          ),
                          borderRadius: BorderRadius.circular(10)
                      ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ElevatedButton(onPressed: (){

              }, child: Text('Login')),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account..?'),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext){
                      return sign();
                    }));
                  }, child: Text('Sign in'))
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
