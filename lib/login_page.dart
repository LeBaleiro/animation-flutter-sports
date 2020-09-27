import 'package:flutter/material.dart';
import 'package:video_4/loading_page.dart';
import 'package:video_4/widgets/button.dart';
import 'package:video_4/widgets/login_text_field.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 40),
                Text(
                  'Sports app',
                  style: TextStyle(
                      color: Color(0xFFef562c),
                      fontSize: 40,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 100),
                LoginTextField(
                  onChanged: (value) {},
                  labelText: 'Digite seu e-mail',
                ),
                SizedBox(height: 20),
                LoginTextField(
                  onChanged: (value) {},
                  labelText: 'Digite sua senha',
                  hideText: true,
                ),
                SizedBox(height: 100),
                RoundButton(
                  label: 'Entrar',
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => LoadingPage())),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
