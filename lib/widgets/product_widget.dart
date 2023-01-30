import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_everything/inner_pages/main_inner_page.dart';
import 'package:flutter_everything/my_flutter_app_icons.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';

class ProductWidget extends StatelessWidget {
  String title;
  String text;
  String price;
  String ImageURL;
  ProductWidget(
      {super.key,
      required this.title,
      required this.text,
      required this.price,
      required this.ImageURL});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.only(bottom: 20, top: 10, left: 10),
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            color: Colors.grey[300], borderRadius: BorderRadius.circular(20)),
        //height: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            titleRow(title),
            const SizedBox(height: 10),
            _priceNumber(price),
            const SizedBox(height: 10),
            _mainBody(text)
          ],
        ),
      ),
      onTap: () => Get.to(MainInnerPage(
        text: text,
        price: price,
        title: title,
      )),
    );
  }

  Widget titleRow(String _title) {
    return Row(
      children: [
        Text(
          _title,
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
        ),
        const SizedBox(
          width: 60,
        ),
        const Icon(NewIcons.heart_empty)
      ],
    );
  }

  Widget _priceNumber(String _price) {
    return Text(
      _price,
      style: const TextStyle(fontWeight: FontWeight.bold),
    );
  }

  Widget _mainBody(String _text) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 10),
          width: 150,
          height: 150,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(ImageURL)),
              borderRadius: BorderRadius.circular(10)),
        ),
        Container(
          //color: Colors.blue,
          padding: const EdgeInsets.all(15),
          width: 230,
          height: 150,
          child: Text(
            _text,
            maxLines: 6,
            softWrap: true,
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }
}
