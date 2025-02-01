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
            Expanded(
                child: ListView.builder(
                    itemBuilder: (context, index) {
                      return _listItemView();
                    },
                    itemCount: 10))
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
          Expanded(child: SizedBox(width: 20,height: 30)),
          Text("Author"),
          Text('20241211'),
          Text('top'),
        ],
      )
    ]);
  }
}
