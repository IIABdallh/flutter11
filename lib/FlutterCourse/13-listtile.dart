import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('MY App'),
      ),
      body: Container(
          child: ListView(
        children: [
          Card(
            shape:
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(500)
                  ),
            child: ListTile(
              onTap: () {
                print("on tap");
              },
              leading: Text("1"),
              title: Text("abdallh",style: TextStyle(color: Colors.pink),),
              subtitle: Text("age 17"),
              trailing: Text("2022"),
            ),
          ),
          Card(
            elevation: 0, //وضوح الخط الي تحت
            margin: EdgeInsets.only(top: 20, bottom: 20), //تباعد خارجي
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            child: ListTile(
              onTap: () {
                print("on tap");
              },
              enabled: false,//متقدرش تعمل عليها اي حاجه 
              leading: Text("2"),
              title: Text("sa3yd"),
              subtitle: Text("age 15"),
              trailing: Text("2021"),
            ),
          ),
          Card(
            child: ListTile(
              onLongPress: () {
                print("long tap");
              },
              isThreeLine: true,//بيخلي leadin و title و trailing  علي نفس الاستقامه 
              leading: Text("3"),
              title: Text("abdo"),
              subtitle: Text("age 19"),
              trailing: Text("2020"),
            ),
          ),
        ],
      )),
    ));
  }
}
