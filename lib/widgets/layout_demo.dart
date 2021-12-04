import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("布局练习"),
          centerTitle: true,
        ),
        body: Container(
          // color: Colors.grey,
          // child: Column(
          //   children: [
          //     Container(
          //       color: Colors.red,
          //       width: 100,
          //       height: 100,
          //     ),
          //     Container(
          //       color: Colors.green,
          //       width: 150,
          //       height: 100,
          //     ),
          //     Container(
          //       color: Colors.yellow,
          //       width: 100,
          //       height: 100,
          //     )
          //   ],

          // child: Row(
          //   // textDirection: TextDirection.rtl,
          //   mainAxisSize: MainAxisSize.max,
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   crossAxisAlignment: CrossAxisAlignment.stretch,
          //   children: [
          //     Container(
          //       color: Colors.red,
          //       width: 100,
          //       height: 200,
          //     ),
          //     Container(
          //       color: Colors.green,
          //       width: 150,
          //       height: 100,
          //     ),
          //     Container(
          //       color: Colors.yellow,
          //       width: 100,
          //       height: 100,
          //     )
          //   ],
          // ),

          // child: Flex(
          //   direction: Axis.vertical,
          //   children: [
          //     Expanded(
          //       child: Container(
          //         color: Colors.red,
          //         width: 100,
          //         height: 200,
          //       ),
          //       flex: 1,
          //     ),
          //     Expanded(
          //         child: Container(
          //           color: Colors.green,
          //           width: 100,
          //           height: 200,
          //         ),
          //         flex: 2),
          //     Expanded(
          //       child: Container(
          //         color: Colors.yellow,
          //         width: 100,
          //         height: 200,
          //       ),
          //       flex: 1,
          //     )
          //   ],
          // ),

          child: EdgeDemo(),
        ));
  }
}

class WrapDemo extends StatefulWidget {
  const WrapDemo({Key? key}) : super(key: key);

  @override
  _WrapDemoState createState() => _WrapDemoState();
}

class _WrapDemoState extends State<WrapDemo> {
  List<int> list = [];

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < 20; i++) {
      list.add(i);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.vertical,
      alignment: WrapAlignment.end,
      spacing: 1.0,
      runSpacing: 1.0,
      children: list
          .map((e) => Container(
                height: 100,
                width: 100,
                child: Text(e.toString()),
                color: Colors.blue,
              ))
          .toList(),
    );
  }
}

class StackDemo extends StatelessWidget {
  const StackDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      alignment: AlignmentDirectional.center,
      children: [
        Container(
          color: Colors.green,
          width: 100,
          height: 100,
        ),
        Container(
          color: Colors.red,
          width: 50,
          height: 20,
        ),
        Positioned(
            width: 20,
            height: 10,
            child: Container(
              color: Colors.yellow,
            ),
          // top: 10,
          // left: 10,
          // right: 10,
          // bottom: 10,
        )
      ],
    );
  }
}

class AlignDemo extends StatelessWidget {
  const AlignDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(50),
      width: 200,
      height: 200,
      color: Colors.green,
      child: Align(
        alignment: Alignment(0,0),
        child: FlutterLogo(
          size: 60,

        ),
      ),
    );
  }
}


class EdgeDemo extends StatelessWidget {
  const EdgeDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.red,
      margin: EdgeInsets.all( 10),//外边距
      child: Text("data"),
      padding: EdgeInsets.all(20),//内边距
    );
  }
}

