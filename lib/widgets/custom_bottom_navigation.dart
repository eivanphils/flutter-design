import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
      backgroundColor: const Color.fromRGBO(55, 57, 81, 1),
      items: [
        BottomNavigationBarItem(
          icon: GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'basic_design'),
            child: const Icon(Icons.calendar_month_outlined)
          ),
          label: 'Calendar',
        ),

        BottomNavigationBarItem(
          icon: GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'scroll_screen'),
            child: const Icon(Icons.chat_rounded)
          ),
          label: 'Chart',
        ),

        BottomNavigationBarItem(
          icon: GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'home_screen'),
            child: const Icon(Icons.usb_rounded)
          ),
          label: 'Usb',
        )
      ]
    );
  }
}
