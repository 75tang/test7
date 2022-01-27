import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: VerCodePage(),
  ));
}

class VerCodePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return VerCodePageState();
  }
}

class VerCodePageState extends State<VerCodePage> {
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
        left: 0.0,
        right: 0.0,
        top: 0.0,
        bottom: 0.0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 60),
              ),
              buildTitle(),
              SizedBox(
                height: 50.0,
              ),
              buildPhone(),
              SizedBox(height: 20.0),
              buildVer(),
              SizedBox(
                height: 20.0,
              ),
              buildPassword(),
              SizedBox(
                height: 20.0,
              ),
              buildDengLu(),
              SizedBox(height: 15),
              buildAgreen(),
              SizedBox(height: 100.0),
              buildOther(),
            ],
          ),
        ));
  }

  buildTitle() {
    return Container(
      margin: EdgeInsets.only(
        left: 34.0,
        right: 34.0,
      ),
      child: Row(
        children: [
          Text(
            '登录神奇课堂',
            style: TextStyle(
              fontSize: 26.0,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  buildPhone() {
    return Container(
      margin: EdgeInsets.only(left: 34.0, right: 34.0),
      child: buildPhoneText(),
    );
  }

  buildPhoneText() {
    return Row(
      children: [
        Expanded(
          child: TextField(
              decoration: InputDecoration(
            hintText: '请输入手机号',
            hintStyle: TextStyle(fontSize: 16.0),
          )),
        )
      ],
    );
  }

  buildVer() {
    return Container(
        margin: EdgeInsets.only(left: 34.0, right: 34.0),
        child: buildVerCode());
  }

  buildVerCode() {
    return Row(
      children: [
        Expanded(
          child: TextField(
              decoration: InputDecoration(
            hintText: '请输入短信验证码',
            hintStyle: TextStyle(fontSize: 16.0),
          )),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            child: Align(
              alignment: Alignment.centerRight,
              child: FlatButton(
                child: Text(
                  '获取验证码',
                  style: TextStyle(fontSize: 12.0, color: Colors.green),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        )
      ],
    );
  }

  buildPassword() {
    return Container(
      margin: EdgeInsets.only(
        left: 34.0,
        right: 34.0,
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: FlatButton(
          child: Text(
            '使用密码登录 >',
            style: TextStyle(fontSize: 12.0),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }

  buildDengLu() {
    return InkWell(
      onTap: () {},
      child: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: 45.0,
            margin: EdgeInsets.only(
              left: 30.0,
              right: 30.0,
            ),
            decoration: BoxDecoration(
              color: Colors.green[200],
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            child: Text(
              '登录',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }

  buildAgreen() {
    return Align(
      child: Container(
        margin: EdgeInsets.only(left: 34.0, right: 34.0),
        child: Row(
          children: [
            Expanded(
                child: RichText(
              text: TextSpan(
                  text: '未注册神奇课堂的手机号，登录时将自动注册\n' '登录即代表您以同意',
                  style: TextStyle(color: Colors.grey),
                  children: [
                    TextSpan(
                      text: '《神奇登录服务协议》',
                      style: TextStyle(fontSize: 16.0, color: Colors.green),
                    )
                  ]),
            )),
          ],
        ),
      ),
    );
  }

  buildOther() {
    return Column(
      children: [
        Container(
          child: Align(
            alignment: Alignment.center,
            child: Text(
              '第三方账号登录',
              style: TextStyle(fontSize: 14.0, color: Colors.grey),
            ),
          ),
        ),
        Container(
          child: Image.asset('images/weixin.jpg'),
          width: 38.0,
          height: 38.0,
        )
      ],
    );
  }
}
