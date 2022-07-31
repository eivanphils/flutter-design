import 'package:flutter/material.dart';

class OptionCards extends StatelessWidget {
  const OptionCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            _CustomCard(
              icon: Icons.card_giftcard,
              title: 'General',
              color: Color(0xff6DBFFF),
            ),
            _CustomCard(
              icon: Icons.bus_alert,
              title: 'Transport',
              color: Color(0xff8A61FF),
            ),
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            _CustomCard(
              icon: Icons.shop,
              title: 'Shopping',
              color: Color(0xffFE64E7),
            ),
            _CustomCard(
              icon: Icons.blur_circular_sharp,
              title: 'Bills',
              color: Color(0xffFE9F61),
            ),
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            _CustomCard(
              icon: Icons.movie,
              title: 'Entertainment',
              color: Color(0xff648DFD),
            ),
            _CustomCard(
              icon: Icons.food_bank,
              title: 'Grocery',
              color: Color(0xff56E874),
            ),
          ],
        ),
      ],
    );
  }
}

class _CustomCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;

  const _CustomCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xff3E4069).withOpacity(0.97),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      width: 150,
      height: 160,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: color,
            ),
            width: 50,
            height: 50,
            child: Icon(icon, color: Colors.white,)),
          const SizedBox(height: 20),
          Text(title, style: TextStyle(color: color, fontSize: 16),)
        ],
      ),
    );
  }
}
