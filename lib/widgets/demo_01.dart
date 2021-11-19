import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {
  const TextDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.red,
      child: Text(
        "文本",
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        textDirection: TextDirection.rtl,
        style: TextStyle(color: Colors.blue, fontSize: 50),
      ),
    );
  }
}

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RaisedButton(
          onPressed: () {},
          child: Text("漂浮按钮"),
        ),
        FlatButton(onPressed: () {}, child: Text("扁平按钮")),
        FlatButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text("data"),
          color: Colors.red,
          textColor: Colors.white,
        ),
        OutlineButton(
          onPressed: () {},
          child: Text("OutlineButton"),
        ),
        IconButton(
          icon: Icon(Icons.home),
          onPressed: () {},
        )
      ],
    );
  }
}

class ImageIconDemo extends StatelessWidget {
  const ImageIconDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(Icons.add),
        IconButton(icon: Icon(Icons.home), onPressed: () {}),
        Container(
          width: double.infinity,
          child: Image.network(
            "https://scpic.chinaz.net/files/pic/pic9/202012/apic29934.jpg",
            fit: BoxFit.fitHeight,
          ),
        ),
        Image.asset("images/image.jpeg")
      ],
    );
  }
}

class CheckDemo extends StatefulWidget {
  const CheckDemo({Key? key}) : super(key: key);

  @override
  _CheckDemoState createState() => _CheckDemoState();
}

class _CheckDemoState extends State<CheckDemo> {
  bool _check = false;
  bool _switch = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Checkbox(
            value: _check,
            onChanged: (v) {
              setState(() {
                _check = v!;
              });
            }),
        Switch(
            value: _switch,
            onChanged: (v) {
              setState(() {
                _switch = v;
              });
            })
      ],
    );
  }
}

class ProgressDemo extends StatelessWidget {
  const ProgressDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          LinearProgressIndicator(
            value: 0.5,
            valueColor: AlwaysStoppedAnimation(Colors.yellow),
          ),
          SizedBox(height: 16),
          Container(
            height: 100,
            width: 100,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(Colors.red),
            ),
          ),
          SizedBox(height: 16),
          CupertinoActivityIndicator(),
        ],
      ),
    );
  }
}

class ClicklDemo extends StatelessWidget {
  const ClicklDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("tag");
      },
      onDoubleTap: () {
        print("double tag");
      },
      child: Text("data"),
    );
  }
}
