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
  List _loginMethod = [
    {'title': 'weixin', 'icon': 'GroovinMaterialIcons.weixin'}
  ];
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
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 60),
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
            buildLoginButton(),
            SizedBox(
              height: 150.0,
            ),
            buildOtherLoginText(),
            SizedBox(height: 10.0),
            buildOtherLoginImage(),
          ],
        ),
      ),
    );
  }

  buildTitle() {
    return Container(
      margin: EdgeInsets.only(
        left: 36.0,
        top: 40.0,
      ),
      child: buildTitleText(),
    );
  }

  buildTitleText() {
    return Row(
      children: [
        Text(
          '登录神奇课堂',
          style: TextStyle(
            fontSize: 26.0,
            color: Colors.black,
          ),
        ),
      ],
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
                hintText: '请输入手机号', hintStyle: TextStyle(fontSize: 16)),
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
              hintStyle: TextStyle(fontSize: 16),
            ),
          ),
        )
      ],
    );
  }

  buildCode() {
    return Container(
      margin: EdgeInsets.only(left: 16.0, right: 30.0),
      child: Row(
        children: [
          Container(
            child: Row(
              children: [
                buildVerCode(),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                buildRigister(),
              ],
            ),
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
    );
  }
  /* return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 16.0, right: 30.0),
          width: 307.0,
          height: 17.0,
          child: Row(
            children: <Widget>[
              Container(
                child: Row(
                  children:<Widget>[
                    buildVerCode(),
                  ]
                ),
              ),
              SizedBox(
                width: 65.0,
              ),
              Container(
                child: Row(
                  children: [
                    buildRigister(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }*/

  buildVerCode() {
    return Container(
      width: 150.0,
      height: 17.0,
      child: Align(
        alignment: Alignment.centerLeft,
        child: FlatButton(
          child: Text(
            '输入验证码登录 >',
            style: TextStyle(
              fontSize: 12.0,
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
    return Container(
      width: 80.0,
      height: 17.0,
      alignment: Alignment.centerRight,
      child: Align(
        child: FlatButton(
          child: Text(
            '忘记密码',
            style: TextStyle(fontSize: 12.0, color: Colors.green),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }

  buildLoginButton() {
    return InkWell(
      onTap: () {},
      child: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: 45.0,
            margin: EdgeInsets.only(
              left: 30,
              right: 30.0,
            ),
            decoration: BoxDecoration(
              color: Colors.green[200],
              borderRadius: BorderRadius.all(Radius.circular(30)),
              //border: Border.all(color:normalColor)
            ),
            child: Text(
              '登录',
              style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }

  /*buildLoginButton() {
    return Align(
      child: SizedBox(
        child: RaisedButton(
          child: Text(
            '登录',
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
          
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
  }*/

  buildOtherLoginText() {
    return Align(
      alignment: Alignment.center,
      child: Text(
        '其他账号登录',
        style: TextStyle(color: Colors.grey, fontSize: 14.0),
      ),
    );
  }

  buildOtherLoginImage() {
    return Container(
      child: Image.asset('images/weixin.jpg'),
      width: 38.0,
      height: 38.0,
    );
  }
}

        
       // Image.asset('assets/images/3.0x/weixin.jpg'),
