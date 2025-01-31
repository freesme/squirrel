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
            )
          ],
        )));
  }
}
