import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:tickets/src/screens/screens.dart';
import 'package:tickets/src/utils/app_styles.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: AppStyles.primaryColor,
        scaffoldBackgroundColor: AppStyles.bgColor,
        primarySwatch: Colors.blue,
      ),
      builder: (context, child) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(context, child!),
        breakpoints: const [
          ResponsiveBreakpoint.resize(350, name: MOBILE),
          ResponsiveBreakpoint.autoScale(600, name: TABLET),
        ],
      ),
      home: const TicketAppView(),
    );
  }
}
