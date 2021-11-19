// ignore_for_file: prefer_const_constructors, prefer_final_fields

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

class InputDemo extends StatefulWidget {
  const InputDemo({Key? key}) : super(key: key);

  @override
  _InputDemoState createState() => _InputDemoState();
}

class _InputDemoState extends State<InputDemo> {
  GlobalKey _key = GlobalKey<FormState>();
  TextEditingController _userController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  FocusNode _userFocusNode = FocusNode();
  FocusNode _passwordFocusNode = FocusNode();

  FocusScopeNode? _focusScopeNode = null;


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _userController.dispose();
    _passwordController.dispose();

    _userFocusNode.dispose();
    _passwordFocusNode.dispose();

    _focusScopeNode?.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _key,
        child: Column(
          children: [
            TextFormField(
              controller: _userController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.add),
                labelText: "账号",
                hintText: "请输入账号",
              ),
              validator: (v) {
                if (v == null || v.isEmpty) {
                  return "账号必须输入";
                }
              },
              textInputAction: TextInputAction.next,
              onFieldSubmitted: (v){
                print("object");
              },
            ),
            SizedBox(height: 16),
            TextFormField(
              focusNode: _passwordFocusNode,
              controller: _passwordController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.add),
                labelText: "密码",
                hintText: "请输入密码",
              ),
              validator: (v) {
                if (v == null || v.length < 5) {
                  return "密码必须输入,且长度必须大于5";
                }
              },
              obscureText: true,
              textInputAction: TextInputAction.send,

            ),
            SizedBox(height: 16),
            RaisedButton(
              onPressed: () {
                if(_focusScopeNode == null){
                  _focusScopeNode = FocusScope.of(context);
                }
                _focusScopeNode?.requestFocus(_userFocusNode);
                // _focusScopeNode?.unfocus();
                // print((_key.currentState as FormState).validate().toString());
              },
              child: Text("提交"),
              color: Colors.blue,
            ),
          ],
        ));
  }
}
