import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  Function onChanged;
  String labelText;
  bool hideText;

  LoginTextField({
    this.onChanged,
    this.labelText,
    this.hideText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      obscureText: hideText ?? false,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(color: Color(0xFF432c29)),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFef562c)),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF432c29)),
        ),
      ),
    );
  }
}
