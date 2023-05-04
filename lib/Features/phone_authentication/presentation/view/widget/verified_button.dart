import 'package:flutter/material.dart';

class VerifiedButton extends StatelessWidget {
  const VerifiedButton({Key? key,required this.text,required this.onPressed}) : super(key: key);
  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          maximumSize: const Size(110, 50),
          primary: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        child:  Text(
          text,
          style:const TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}
