import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyApp"),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: CustomSearch());
            },
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [],
        ),
      ),
    );
  }
}

class CustomSearch extends SearchDelegate {
  List username = ["wael", "abdallh", "basel", 'ahemd', "n3ym"];

  List? Listfilter;

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = "";
        },
        icon: const Icon(Icons.clear),
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);

        // Navigator.of(context).pop(); وممكن دي برده
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return  Text("Results $query");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query == " ") {
      return Container(
        child: ListView.builder(
            itemCount: username.length,
            itemBuilder: ((context, index) {
              return InkWell(
                onTap: () {//بتحول الي جواها ل button
                  showResults(context);
                },
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(18),
                    child: Text(
                      username[index],
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              );
            })),
      );
    } else {
      Listfilter =
          username.where((element) => element.contains(query)).toList();
      return Container(
        child: ListView.builder(
            itemCount: Listfilter!.length,
            itemBuilder: ((context, index) {
              return InkWell(
                //بتحول الموجود جوها لbutton
                onTap: () {
                  showResults(context);
                },
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(18),
                    child: Text(
                      Listfilter![index],
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              );
            })),
      );
    }
  }
}
