import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  SignInPage({Key key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: buildBody(),
          ),
        ),
      ),
    );
  }

  Widget buildBody() {
    var _textStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w700,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 100),
        Icon(Icons.ac_unit),
        SizedBox(height: 50),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Email",
            style: _textStyle,
          ),
        ),
        TextField(),
        SizedBox(height: 20),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Password",
            style: _textStyle,
          ),
        ),
        TextField(
          obscureText: true,
        ),
        SizedBox(height: 20),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            "Forget Password?",
            style: _textStyle,
          ),
        ),
        SizedBox(height: 50),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ElevatedButton(
            onPressed: () {},
            child: Container(
              alignment: Alignment.center,
              height: 50,
              child: Text(
                "SIGN IN",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
