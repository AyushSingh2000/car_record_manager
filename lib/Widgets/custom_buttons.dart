import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 13, right: 13, top: 4, bottom: 4),
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 13,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          backgroundColor:
              MaterialStateProperty.all<Color>(Color.fromRGBO(8, 138, 145, 1)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(28.0),
            ),
          ),
        ),
        child: Text(text,
            style: const TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w500,
                color: Colors.white,
                letterSpacing: 1,
                fontFamily: 'Gloock')),
      ),
    );
  }
}
