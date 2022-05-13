

import 'package:flutter/material.dart';

import 'NavBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Gridview(),
    );
  }
}

class Gridview extends StatefulWidget {
  const Gridview({Key? key}) : super(key: key);

  @override
  State<Gridview> createState() => _GridviewState();
}

class _GridviewState extends State<Gridview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        title: const Text(
          "Dashboard",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.green,
        actions: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(
              Icons.home,
              color: Colors.red,
              size: 25,
            ),
          )
        ],
        
      ),
      body: Column(
        children: [
          buildQuoteCard(),
          GridView.count(
            shrinkWrap: true,
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisCount: 2,
            children: [
              card1(),
              card2(),
              card1(),
              card2(),
            ],
          )
        ],
      ),
    );
  }
}

buildQuoteCard() => Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    elevation: 3,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "MOST PRIORITY TASK",
                style: TextStyle(color: Colors.red),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(26.0),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.home_repair_service,
                      color: Colors.brown,
                      size: 35,
                    ),
                  ),
                   const Padding(
                     padding: EdgeInsets.all(8.0),
                     child: Icon(Icons.rectangle_outlined),
                   ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text("Task Title"),
                        Text("Task Title discription"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const Spacer(
          flex: 1,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Icon(
                Icons.more_horiz_outlined,
                color: Colors.red,
              ),
            ),
            Text(
              "Start",
              style: TextStyle(color: Colors.green),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Text("2:00:00"),
            )
          ],
        )
      ],
    ));
card1() => Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.home_repair_service,
                  color: Colors.brown,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "5 Task",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Work", style: TextStyle(fontSize: 20)),
                Text("Office project task"),
              ],
            ),
          ),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 8),
                child: Text(
                  "2 - completed ",
                  style: TextStyle(color: Colors.green),
                ),
              ),
              Text("|"),
              Text(
                "2 - due ",
                style: TextStyle(color: Colors.red),
              )
            ],
          ),
        ],
      ),
    );
card2() => Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 3,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.home,
                  color: Colors.red,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "5 Task",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Work", style: TextStyle(fontSize: 20)),
                Text("Office project task"),
              ],
            ),
          ),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 8),
                child: Text(
                  "2 - completed ",
                  style: TextStyle(color: Colors.green),
                ),
              ),
              Text("|"),
              Text(
                "2 - due ",
                style: TextStyle(color: Colors.red),
              )
            ],
          ),
        ],
      ),
    );
