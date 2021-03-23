import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: HomeBody(),
    );
  }
}

class HomeBody extends StatefulWidget {
  HomeBody({Key key}) : super(key: key);

  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "https://miro.medium.com/max/1000/1*ilC2Aqp5sZd1wi0CopD1Hw.png",
      "https://miro.medium.com/max/2560/1*1orxIbVfgZa4mB_qEL17Yg.jpeg",
      "https://miro.medium.com/max/2560/1*1orxIbVfgZa4mB_qEL17Yg.jpeg",
      "https://miro.medium.com/max/2560/1*1orxIbVfgZa4mB_qEL17Yg.jpeg",
      "https://miro.medium.com/max/2560/1*1orxIbVfgZa4mB_qEL17Yg.jpeg",
    ];

    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.amber,
        child: ListView.builder(
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.symmetric(
                vertical: 4,
                horizontal: 8,
              ),
              child: Image.network(images[index]),
            );
          },
        ),
      ),
    );
  }
}
