import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.green,
        child: Container(
          child: Stack(
            children: [
              Positioned.fill(
                child: Container(
                  color: Colors.blueAccent,
                  child: Image.asset(
                    "assets/images/splash_background.jpeg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned.fill(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.black87,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Spacer(flex: 30),
                      Icon(
                        Icons.ac_unit,
                        color: Colors.white,
                        size: 60,
                      ),
                      Text(
                        "Movie App",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      Spacer(flex: 60),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Container(
                            alignment: Alignment.center,
                            height: 50,
                            child: Text(
                              "SIGN UP",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10, //
                      ),
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
                      Spacer(flex: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
