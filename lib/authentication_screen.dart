import 'package:custom_pack/custom_button.dart';
import 'package:custom_pack/custom_text_field.dart';
import 'package:flutter/material.dart';

class AuthenticationScreen extends StatefulWidget {
  @override
  _AuthenticationScreenState createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/logo.png",
                    width: 150,
                  ),
                  Text(
                    "Authentication",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("E-mail"),
                  CustomTextField(
                      placeholder: "E-mail",
                      borderColor: Colors.orange,
                      textColor: Colors.orange,
                      textController: TextEditingController()),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Password"),
                  CustomTextField(
                      placeholder: "Password",
                       borderColor: Colors.orange,
                      textColor: Colors.orange,
                      textController: TextEditingController()),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                    buttonText: "Authenticate",
                    backgroundColor: Colors.grey,
                    textColor: Colors.white,
                    onClickHandler: () {}),
              ],
            )
          ],
        ),
      ),
    );
  }
}
