
import 'package:flutter/material.dart';

class SingleCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;

  const SingleCard({
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
        color: const Color.fromRGBO(62, 66, 107, 0.7),
      ),
      margin: const EdgeInsets.all(15),
      height: 180,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color,
            child: Icon(icon, color: Colors.white, size: 35),
            radius: 30,
          ),
          const SizedBox(height: 10),
          Text(title, style: TextStyle(color: color, fontSize: 18),)
        ],
      ),
    );
  }
}
