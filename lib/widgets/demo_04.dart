import 'package:flutter/material.dart';

class PageDemo extends StatefulWidget {
  const PageDemo({Key? key}) : super(key: key);

  @override
  _PageDemoState createState() => _PageDemoState();
}

class _PageDemoState extends State<PageDemo>
    with SingleTickerProviderStateMixin {
  List tabs = ["Flutter", "Android", "IOS"];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: () {
            print("leading");
          },
        ),
        actions: [
          IconButton(
              onPressed: () {
                print("add");
              },
              icon: Icon(Icons.add)),
          IconButton(
              onPressed: () {
                print("add");
              },
              icon: Icon(Icons.add))
        ],
        elevation: 4.0,
        bottom: TabBar(
          tabs: tabs
              .map((e) => Tab(
                    text: e,
                  ))
              .toList(),
        ),
        title: Text("TabBar"),
      ),
    );
  }
}
