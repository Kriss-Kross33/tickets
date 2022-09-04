import 'package:flutter/material.dart';
import 'package:tickets/src/utils/utils.dart';

import '../widgets/profile_widgets/widgets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: const [
          ProfileTopSection(),
          ProfileMidSection(),
          ProfileBottomSection(),
        ],
      ),
    );
  }
}
