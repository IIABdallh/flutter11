import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "home",
      routes: {
        "home": (context) => const HomePage(),
        "pageone": (context) => const PageOne(),
        "pagetwo": (context) => const PageTwo(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    print("=========================homepage======================");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            const Text("This is the HomePage"),
            MaterialButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("pageone");
                },
                child: const Text("go to pageone")),
            MaterialButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("pagetwo");
                },
                child: const Text("go to pagetwo")),
          ],
        ),
      ),
    );
  }
}

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  void initState() {
    print("=========================page1======================");
    super.initState();
  }
    @override
  void dispose() {
    print(
        "++++++++++++++++++++++page 1+++++++++++++++++++++++++"); //بتشتغل اول ما احذف الصفحه
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("PageOne"),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              const Text("This is PageOne"),
              MaterialButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("pagetwo");
                  },
                  child: const Text("go to pagetwo")),
              MaterialButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamedAndRemoveUntil("home", (Route) => false);
                  },
                  child: const Text("go to Homepage")),
            ],
          ),
        ),
      ),
    );
  }
}

class PageTwo extends StatefulWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  void initState() {
    print("=========================page2======================");
    super.initState();
  }

  @override
  void dispose() {
    print("++++++++++++++++++++++page 2+++++++++++++++++++++++++");//بتشتغل اول ما احذف الصفحه
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("PageTwo"),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              const Text("This is PageTwo"),
              MaterialButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("pageone");
                  },
                  child: const Text("go to pageone")),
              MaterialButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamedAndRemoveUntil("home", (Route) => false);
                  },
                  child: const Text("go to Homepage")),
            ],
          ),
        ),
      ),
    );
  }
}
