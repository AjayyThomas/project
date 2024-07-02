import 'package:flutter/material.dart';

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {

  DateTime? _selectedDate;

  Future<void> _selectDate(BuildContext context)async{
    final DateTime? picked = await showDatePicker(
        context: context,initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 1)),);
    if (picked != null && picked != _selectedDate){
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            trailing:
                Column(
                  children: [
              PopupMenuButton(
                  color: Colors.black12,
                  itemBuilder: (BuildContext)=>[
                  PopupMenuItem(child: Text('dfgdgf',style: TextStyle(color: Colors.white),)),
                  PopupMenuItem(child: Text('jhgkg',style: TextStyle(color: Colors.white),)),
                  PopupMenuItem(child: Text('tkugh',style: TextStyle(color: Colors.white),)),
                  PopupMenuItem(child: Text('lihs',style: TextStyle(color: Colors.white),)),
                  PopupMenuItem(child: Text('lihs',style: TextStyle(color: Colors.white),)),
                  PopupMenuItem(child: Text('ljjkgs',style: TextStyle(color: Colors.white),)),
                ])
    ],
    ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('home'),
              ],
            ),
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(backgroundImage: AssetImage('')
              ),
            ),
          ),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(30),
            shadowColor: Colors.black,
            child: SizedBox(
              width: 360,
              child: TextField(
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  hintText: "Find hostels or pg's",
                    prefixIcon: Icon(Icons.search),
                  border: InputBorder.none
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 340,
              height: 35,
              child: TextField(
                decoration: InputDecoration(
                  hintText:  'Search Location',
                  hintStyle: TextStyle(fontSize: 12,wordSpacing: 5,letterSpacing: 2.5),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  suffixIcon: Icon(Icons.location_searching_outlined),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 360,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('lib/photos/hostel-room-types-dorms.jpg')
                )
              ),
              child: Container(
               width: 360,
               height: 200,
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                 color: Colors.black54
               ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25,top: 20),
                          child: Text("Get 50% \n Discount",style: TextStyle(
                              color: Colors.white,fontSize: 25)),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 160,top: 50),
                      child: ElevatedButton(onPressed: (){

                      }, child: Text("Get now",style: TextStyle(fontSize: 25),)),
                    )
                  ],
                ),
              ),
            ),
          ),
          DefaultTabController(length: 3, child: Expanded(child: Column(
            children: [
              TabBar(
                  indicatorColor: Colors.blue,
                  unselectedLabelColor: Colors.black87,
                  labelColor: Colors.lightBlue,
                  labelPadding: EdgeInsets.symmetric(horizontal: 8),
                  tabs:[
                    Tab(
                  text: "hostels",
                  ) ,Tab(
                  text: "pg",
                  ) ,Tab(

                  text: "mess",
                  ) ,
                  ]
                  )
            ],
          )))
        ],
      ),
    );
  }
}
