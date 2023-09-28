import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    tabController = TabController(
        length: 3, vsync: this); //هي داله بتشتغل اول ما افتح الصفحه
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("myapp"),
          bottom: TabBar(
              controller: tabController,
              indicatorColor: Colors.green,
              indicatorWeight: 9,
              labelColor: Colors.red,
              labelStyle: const TextStyle(fontSize: 20),
              unselectedLabelColor: Colors.white,
              unselectedLabelStyle: const TextStyle(fontSize: 10),
              tabs: const [
                Tab(
                  iconMargin: EdgeInsets.only(bottom: 10),
                  icon: Icon(Icons.laptop),
                  text: "laptop",
                ),
                Tab(
                  icon: Icon(Icons.computer),
                  text: "PC",
                ),
                Tab(
                  icon: Icon(Icons.mobile_friendly),
                  text: "Mobile",
                ),
              ]),
        ),
        body: Container(
          padding: const EdgeInsets.all(15),
          child: TabBarView(controller: tabController, children: [
            Column(
              children: [
                const Text("laptop page"),
                MaterialButton(
                  onPressed: () {
                    tabController!.animateTo(2);//هينقلني لصفحه الموبيل
                  },
                  child: const Text("go to mobile"),
                )
              ],
            ),
            const Text("PC page"),
            Column(
              children: [
                const Text("Mobile page"),
                MaterialButton(
                  onPressed: () {
                    tabController!.animateTo(1); //هينقلني لصفحه بي سي
                  },
                  child: const Text("go to PC"),
                )
              ],
            ),
            
          ]),
        ),
      ),
    );
  }
}
