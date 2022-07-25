import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          // Image
          Image(image: AssetImage('assets/mk.jpg')),

          // Tittle
          Title(),

          // Buttons
          Buttons(),

          // Parragrah
          Parragrah()
        ],
      ),
    );
  }
}

class Parragrah extends StatelessWidget {
  const Parragrah({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: const Text(
          'Veniam nisi ad eu eu esse velit excepteur aliquip culpa et duis magna ad. Laboris exercitation sit magna amet do esse qui dolore commodo. Anim et veniam id elit laborum mollit in nostrud officia.'),
    );
  }
}

class Buttons extends StatelessWidget {
  const Buttons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          CustomButton(icon: Icons.phone, text: 'PHONE',),
          CustomButton(icon: Icons.gps_fixed, text: 'ROUTE',),
          CustomButton(icon: Icons.share, text: 'SHARE',),
        
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;
  
  const CustomButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 30,
        ),
        
        Text(
          text,
          style: const TextStyle(color: Colors.blue),
        )
      ],
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Voluptate magna ullamco culpa laboris.'),
              Text(
                'Voluptate culpa laboris.',
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),
          Expanded(child: Container()),
          const Icon(Icons.star, color: Colors.red),
          const Text('41')
        ],
      ),
    );
  }
}
