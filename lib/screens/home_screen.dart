import 'package:flutter/material.dart';
import 'package:flutter_design/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(children: [
        // Background
        Background(),

        // HomeBody
        _HomeBody()
      ]),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          // Tittles
          PageTitle(),

          // CardTable
          CardTable()
        ],
      ),
    );
  }
}
