import 'package:flutter/material.dart';
import 'package:learnflutter/widgets/demo_01.dart';

import 'widgets/layout_demo.dart';
import 'widgets/navigator_demo_dart.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => LoginPage(),
        "layout":(context) => LayoutDemo(),
      },
      initialRoute: "layout",
      onGenerateRoute: (RouteSettings s) {
        print(s.name);
        switch (s.name) {
          case "menu":
            return MaterialPageRoute(
                builder: (context) {
                  return MenuPage();
                },
                settings: s);
            break;
          default:
        }
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tufuring"),
        elevation: 10.0,
        centerTitle: true,
      ),
      body: InputDemo(),
    );
  }
}

class CountPage extends StatefulWidget {
  const CountPage({Key? key}) : super(key: key);

  @override
  _CountPageState createState() => _CountPageState();
}

class _CountPageState extends State<CountPage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("$count"),
        RaisedButton(
          onPressed: () {
            setState(() {
              count++;
            });
          },
          child: Text("点击"),
        )
      ],
    );
  }
}
