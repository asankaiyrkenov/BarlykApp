import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_everything/widgets/bar_widgets.dart';
import 'package:flutter_everything/widgets/product_widget.dart';

class Everything extends StatelessWidget {
  const Everything({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _row(),
          _products(),
        ],
      ),
    );
  }

  Widget _row() {
    return Row(
      children: [
        BarWidgets(icon: Icons.directions_car, title: 'Машины'),
        BarWidgets(icon: Icons.cases_outlined, title: 'запчасти'),
        BarWidgets(icon: Icons.credit_card, title: 'Сервисы'),
        BarWidgets(icon: Icons.directions_boat, title: 'Прочее')
      ],
    );
  }

  Widget _products() {
    return Column(
      children: [
        SizedBox(height: 20),
        ProductWidget(
          title: 'Двигатель Toyota 2.4 с установкой',
          text:
              'Опытные водители знают, что двигатель Toyota - это синоним надежности и долговечности. С его мощным и экономичным производством, вы можете наслаждаться поездками без каких-либо забот. Не ждите больше, обновите свой автомобиль с двигателем Toyota.',
          price: '20 202 тг',
          ImageURL:
              'https://img02.flagma.kz/photo/generator-toyota-hilux-27060-0l060-2159337_big.jpg',
        )
      ],
    );
  }
}
