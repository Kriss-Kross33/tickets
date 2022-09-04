import 'package:flutter/material.dart';
import 'package:tickets/src/utils/utils.dart';

import '../widgets/search_widgets/widgets.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        backgroundColor: AppStyles.bgColor,
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: const [
            TopSection(),
            BottomSection(),
          ],
        ),
      ),
    );
  }
}
