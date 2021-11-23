import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("登录"),
      ),
      body: RaisedButton(
        onPressed: () {
          Navigator.of(context)
              .pushNamed("menu", arguments: "菜单")
              .then((value) => print(value));
          // Navigator.of(context).push(MaterialPageRoute(
          //   builder: (context) {
          //     return MenuPage();
          //   },
          //   maintainState: false,
          //   fullscreenDialog: true,
          //   settings: RouteSettings(
          //     name: "menu",
          //     arguments:{"name: tufuring"},
          //   ),
          // ))
          //     .then((value) => print(value));
        },
        child: Text("登陆"),
      ),
    );
  }
}

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    dynamic arguments = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(arguments.toString()),
      ),
      body: RaisedButton(
        onPressed: () {
          Navigator.of(context).pop({"name": "Tufuring"});
        },
        child: Text("返回"),
      ),
    );
  }
}
