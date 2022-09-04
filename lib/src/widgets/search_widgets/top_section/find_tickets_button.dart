import 'package:flutter/material.dart';
import 'package:tickets/src/utils/utils.dart';

class FindTicketsButton extends StatelessWidget {
  const FindTicketsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: const Color(0xD91130CE),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        onPressed: () {},
        child: const Text('Find tickets'),
      ),
    );
  }
}
