import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(''),
        ),
        body: SafeArea(
            child: Column(
          children: [
            SizedBox(
              height: 150,
              width: double.infinity,
              child: Swiper(
                itemBuilder: (context, index) {
                  // return Image.network(
                  //   "https://via.placeholder.com/350x150",
                  //   fit: BoxFit.fill,
                  // );
                  return Container(
                    height: 150,
                    color: Colors.lightBlue,
                  );
                },
                itemCount: 3,
                pagination: const SwiperPagination(),
                control: const SwiperControl(),
              ),
            ),
            // Expanded(
            //     child: ListView.builder(
            //         itemBuilder: (context, index) {
            //           return _layout();
            //         },
            //         itemCount: 10))
            Center(
              child: Container(
                padding: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text('Center'),
              ),
            ),
            Container(
              color: Colors.blue,
              padding: EdgeInsets.all(18.0),
              child: Text('Container padding 18.0'),
            ),
            Center(
                child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      // 分别设置四个角的圆角半径
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        // topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(40),
                      ),
                    ))),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Text('row'), Text('data'), Text('example')],
            ),
            Row(
              children: [
                Expanded(child: Container(
                  color: Colors.green,
                  child: Text('data2'),
                )),
                Text('data'),
                Text('data')
              ],
            ),
          ],
        )));
  }

  Widget _listItemView() {
    return Column(children: [
      Row(
        children: [
          Image.network(
            "https://img2.baidu.com/it/u=1940498811,3704695280&fm=253&fmt=auto&app=138&f=JPEG",
            height: 60,
            width: 30,
          ),
          Expanded(child: SizedBox(width: 20, height: 30)),
          Text("Author"),
          Text('20241211'),
          Text('top'),
        ],
      )
    ]);
  }

  Widget _layout() {
    return Center(
      child: Text('Some text'),
    );
  }
}
