import 'package:flutter/material.dart';

void main() {
  runApp(Page_View11());
}

class Page_View11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScrollablePageView(),
    );
  }
}

class ScrollablePageView extends StatefulWidget {
  @override
  _ScrollablePageViewState createState() => _ScrollablePageViewState();
}

class _ScrollablePageViewState extends State<ScrollablePageView> {
  final PageController pageController = PageController(initialPage: 0);
  final List<Widget> pages = [
    Container(color: Colors.blue),
    Container(color: Colors.green),
    Container(color: Colors.orange),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: pageController,
              itemCount: pages.length,
              itemBuilder: (BuildContext context, int index) {
                return ListView(
                  children: [
                    ListTile(
                      title: Text('Item 2'),
                    ),
                    ListTile(
                      title: Text('Item 3'),
                    ),
                    ListTile(
                      title: Text('Item 4'),
                    ),
                    ListTile(
                      title: Text('Item 5'),
                    ),
                    ListTile(
                      title: Text('Item 6'),
                    ),
                  ],
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  pageController.previousPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.arrow_forward),
                onPressed: () {
                  pageController.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
