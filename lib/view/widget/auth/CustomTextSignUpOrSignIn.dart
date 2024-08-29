
import 'package:flutter/material.dart';
class CustomTextSignUpOrSignIn extends StatelessWidget {
  final String textone;
  final String texttwo;
  final Function onTap;

  const CustomTextSignUpOrSignIn({
    required this.textone,
    required this.texttwo,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: textone,
              style: TextStyle(color: Colors.black),
            ),
            TextSpan(
              text: texttwo,
              style: TextStyle(
                color: Color.fromRGBO(143, 148, 251, 1),
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
