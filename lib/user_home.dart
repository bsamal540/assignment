//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project_test/homepage.dart';

class UsrScreen extends StatelessWidget {
  UsrScreen({super.key});

  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {Navigator.pop(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));}, icon: Padding(padding: EdgeInsets.only(left:15),
        child: Icon(Icons.arrow_back_ios)), iconSize: 40),
        backgroundColor: Colors.indigo[900],
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.menu), iconSize: 40),
          Padding(padding: EdgeInsets.only(right: 20)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.green,
                  child: Icon(Icons.person, size: 50, color: Colors.white),
                ),
                title: Text(
                  'Tommy Berns',
                  style: TextStyle(
                      color: Colors.indigo[400],
                      fontSize: 25,
                      fontWeight: FontWeight.w900),
                ),
                subtitle: Row(
                  children: [
                    Text(
                      "Los Angeis",
                      style: TextStyle(fontSize: 24),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.location_on),
                      color: Colors.greenAccent[400],
                      iconSize: 35,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28),
              child: Row(
                children: [
                  Text(
                    "Balance",
                    style: TextStyle(fontSize: 25),
                  ),
                  Icon(
                    Icons.attach_money,
                    color: Colors.black,
                  ),
                  Text(
                    '567,57',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add,
                    color: Colors.black38,
                  ),
                  iconSize: 60,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search, color: Colors.black38),
                  iconSize: 60,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.auto_graph, color: Colors.black38),
                  iconSize: 60,
                ),
              ],
            ),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              margin: EdgeInsets.all(16),
              child: Column(children: [
                const ListTile(),
                ListTile(
                  title: RichText(
                    text: TextSpan(
                      text: "  1234 ",
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: "5434 ",
                          style: TextStyle(
                            fontSize: 30.0,
                          ),
                        ),
                        TextSpan(
                          text: "2345 ",
                          style: TextStyle(
                            fontSize: 30.0,
                          ),
                        ),
                        TextSpan(
                          text: " 2345 ",
                          style: TextStyle(
                            fontSize: 30.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  subtitle: Text("CARD NUMBER"),
                ),
                ListTile(
                  title: Text("Tommy Berns"),
                  subtitle: Text("sadsgfd"),
                  trailing: Column(
                    children: [Text('05 / 20'), Text('sdsg')],
                  ),
                ),
              ]),
            ),
            ListTile(title: Text('My Cards',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),),
              trailing: IconButton(icon: Icon(Icons.arrow_forward_ios),onPressed: (){},),),
              ListTile(title: Text('Transactions',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600)),
              trailing: IconButton(icon: Icon(Icons.arrow_forward_ios),onPressed: (){},),),
            
          ],
        ),
      ),

      //navigation bar

      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.area_chart,
                color: Colors.black38,
              ),
              iconSize: 50,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                backgroundColor: Colors.black12,
                child: Icon(Icons.attach_money_rounded, color: Colors.black38),
              ),
              iconSize: 80,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.security,
                color: Colors.black38,
              ),
              iconSize: 50,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.person_3,
                color: Colors.blue,
              ),
              iconSize: 50,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: Colors.black38,
              ),
              iconSize: 50,
            ),
            label: "",
          ),
        ],
      ),
    );
  }
}
