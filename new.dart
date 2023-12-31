import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

class New_PageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> pageview0 = ["1", "2", "3"];
  List<String> pageview1 = ["A", "B", "C"];
  int pageViewIndex = 0;

  // Try single controller.
  late PageController controller;
  // Try multiple controller.
  late List<PageController> controllers;

  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: 0);  // pageview0 and pageview1
    controllers = [];
    controllers.add(PageController(initialPage: 0));  // pageview0
    controllers.add(PageController(initialPage: 0));  // pageview1
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.navigate_next), onPressed: () {
            setState(() {
              if (pageViewIndex == 0) pageViewIndex = 1;
              else pageViewIndex = 0;
            });
          },)
        ],
      ),
      body: PageView.builder(
        itemBuilder: (context, page) {
          if (pageViewIndex == 0) return Center(child: Text(pageview0[page]));
          else return Center(child: Text(pageview1[page]));
        },
        itemCount: 3,

        // single controller
//        controller: controller,

        // Multiple controller
        controller: (pageViewIndex == 0)? controllers[0] : controllers[1],
      ),
    );
  }
}