import 'package:flutter/material.dart';

class page2 extends StatefulWidget {
  const page2({super.key});

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(
              color: Colors.black12,
              itemBuilder: (BuildContext)=>[
                PopupMenuItem(child: Text('.kjlp',style: TextStyle(color: Colors.white),)),
                PopupMenuItem(child: Text('hghgjhst',style: TextStyle(color: Colors.white),)),
                PopupMenuItem(child: Text('Linjkje',style: TextStyle(color: Colors.white),)),
                PopupMenuItem(child: Text('Stlklkages',style: TextStyle(color: Colors.white),)),
                PopupMenuItem(child: Text('P,ks',style: TextStyle(color: Colors.white),)),
                PopupMenuItem(child: Text('Seujhgngs',style: TextStyle(color: Colors.white),)),
              ])
        ],
        title: Center(child: Text('booking history')),
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                    color: Colors.blueAccent
                ),
                child: Text('data')),
            ListTile(
              leading: Text('jhf'),
            )
          ],
        ),
      ),
    );
  }
}
