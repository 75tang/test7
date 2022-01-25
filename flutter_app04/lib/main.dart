import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: RootPage(),
  ));
}

class RootPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RootPageState();
  }
}

class RootPageState extends State<RootPage> {
  final _formKey = GlobalKey<FormState>();
  String? _phone, _password;
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: [
          buildInput(),
        ],
      ),
    );
  }

  buildInput() {
    return Positioned(
      left: 0,
      right: 0,
      top: 0,
      bottom: 0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40.0,
            ),
            buildTitle(),
            SizedBox(
              height: 40.0,
            ),
            buildUser(),
            SizedBox(
              height: 20.0,
            ),
            buildPassword(),
            SizedBox(
              height: 20.0,
            ),
            buildCode(),
            SizedBox(
              height: 30,
            ),
            buildLoginButton(context),
            SizedBox(
              height: 20.0,
            ),
            buildOtherLoginText(),
          ],
        ),
      ),
    );
  }

  buildTitle() {
    return Container(
      margin: EdgeInsets.only(
        left: 30.0,
        right: 30.0,
      ),
      child: Text(
        '登录神奇界面',
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 30.0,
          color: Colors.black,
        ),
      ),
    );
  }

  buildUser() {
    return Container(
      margin: EdgeInsets.only(
        left: 30.0,
        right: 30.0,
      ),
      child: buildInputRow(),
    );
  }

  buildInputRow() {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
                hintText: '请输入手机号', hintStyle: TextStyle(fontSize: 20)),
          ),
        )
      ],
    );
  }

  buildPassword() {
    return Container(
      margin: EdgeInsets.only(
        left: 30.0,
        right: 30.0,
      ),
      child: buildPasswordRow(),
    );
  }

  buildPasswordRow() {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: '请输入密码',
              hintStyle: TextStyle(fontSize: 20),
            ),
          ),
        )
      ],
    );
  }

  buildCode() {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(
            left: 30.0,
            right: 30.0,
          ),
        ),
        buildVerCode(),
        buildRigister(),
      ],
    );
  }

  buildVerCode() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: FlatButton(
          child: Text(
            '验证码登录',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }

  buildRigister() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Align(
        alignment: Alignment.centerRight,
        child: FlatButton(
          child: Text(
            '忘记密码',
            style: TextStyle(fontSize: 20.0, color: Colors.green),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }

  Align buildLoginButton(BuildContext context) {
    return Align(
      child: SizedBox(
        height: 44.0,
        width: 341.0,
        child: RaisedButton(
          child: Text(
            '登录',
            style: TextStyle(fontSize: 20.0),
          ),
          color: Colors.green,
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              _formKey.currentState!.save();
              print('user:$_phone , assword:$_password');
            }
          },
          shape: StadiumBorder(side: BorderSide()),
        ),
      ),
    );
  }
}

Align buildOtherLoginText() {
  return Align(
      alignment: Alignment.center,
      child: Text(
        '第三方账号登录',
        style: TextStyle(color: Colors.grey, fontSize: 14.0),
      ));
}
