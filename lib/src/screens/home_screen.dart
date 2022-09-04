import 'package:flutter/material.dart';

import '../widgets/home_widgets.dart/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: const [
            HomeTopSection(),
            HomeMidSection(),
            HomeBottomSection(),
          ],
        ),
      ),
    );
  }
}
