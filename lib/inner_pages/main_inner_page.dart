import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_everything/lines.dart';
import 'package:flutter_everything/my_flutter_app_icons.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';

class MainInnerPage extends StatelessWidget {
  String text;
  String price;
  String title;
  MainInnerPage(
      {super.key,
      required this.text,
      required this.price,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _imageView(),
              _sharing(),
              _description(),
              HorizontalLinee(),
              _briethDescription(),
              HorizontalLinee(),
              _comment()
            ],
          ),
        ),
        floatingActionButton: _buttom());
  }

  Widget _imageView() {
    return Container(
      margin: EdgeInsets.only(top: 40, right: 5, left: 5, bottom: 10),
      height: 300,
      width: double.maxFinite,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                'https://s0.rbk.ru/v6_top_pics/media/img/4/09/755901366474094.jpg',
              ))),
    );
  }

  Widget _sharing() {
    return Row(
      children: [
        Expanded(child: SizedBox()),
        Icon(Icons.share),
        SizedBox(width: 20),
        Icon(NewIcons.heart_empty),
        SizedBox(
          width: 15,
        )
      ],
    );
  }

  Widget _description() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Text(
          title,
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 5),
        Text(
          price + ' тг',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }

  Widget _briethDescription() {
    return Column(
      children: [
        SizedBox(height: 15),
        _dontTouch('Состояние', 'б/у', 130),
        SizedBox(height: 10),
        _dontTouch('Город', 'Алматы', 170),
        SizedBox(height: 10),
        _dontTouch('Есть доставка', 'Да', 105),
        SizedBox(
          height: 15,
        )
      ],
    );
  }

  Widget _dontTouch(String _title, String _text, double _width) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(width: 15),
        Text(
          _title,
          style: TextStyle(
              fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w500),
        ),
        SizedBox(width: _width),
        Text(_text)
      ],
    );
  }

  Widget _comment() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 15),
        Text(
          'Коментарий продавца',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          text,
          style: TextStyle(fontSize: 15),
        )
      ],
    );
  }

  Widget _buttom() {
    return Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.only(right: 20),
      child: IconButton(
        icon: Icon(
          Icons.home,
          color: Colors.white,
        ),
        onPressed: () => Get.back(),
      ),
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(30)),
    );
  }
}
