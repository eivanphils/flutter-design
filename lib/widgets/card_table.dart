import 'package:flutter/material.dart';

import 'package:flutter_design/widgets/widgets.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            SingleCard(icon: Icons.border_all, title: 'General', color: Color(0xff6DBFFF)),
            SingleCard(icon: Icons.car_rental, title: 'Transport', color: Color(0xff8A61FF)),
          ]
        ),

        TableRow(
          children: [
            SingleCard(icon: Icons.shop, title: 'Shopping', color: Color(0xffFE64E7)),
            SingleCard(icon: Icons.cloud, title: 'Bills', color: Color(0xffFE9F61)),
          ],
        ),

        TableRow(
          children: [
            SingleCard(icon: Icons.movie, title: 'Entertainment', color: Color(0xff648DFD)),
            SingleCard(icon: Icons.food_bank,title: 'Grocery',color: Color(0xff56E874)),
          ],
        ),
      ],
    );
  }
}
