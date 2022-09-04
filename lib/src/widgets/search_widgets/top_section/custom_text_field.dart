import 'package:flutter/material.dart';
import 'package:tickets/src/utils/utils.dart';

class CustomTextField extends StatelessWidget {
  final IconData icon;
  final String hintText;
  const CustomTextField({
    Key? key,
    required this.icon,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          prefixIcon: Icon(
            icon,
            color: const Color(0xFFBFC2DF),
          ),
          hintText: hintText,
          fillColor: Colors.white,
          focusColor: Colors.white,
          hintStyle: AppStyles.textStyle,
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }
}
