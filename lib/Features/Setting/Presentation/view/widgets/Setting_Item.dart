import 'package:flutter/material.dart';

class SettingItem extends StatelessWidget {
  const SettingItem(
      {Key? key,
      required this.icon,
      required this.upperText,
      required this.lowerText})
      : super(key: key);
  final IconData? icon;
  final String? upperText;
  final String? lowerText;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(onPressed: () {}, icon: Icon(icon)),
        Padding(
          padding: EdgeInsets.only(top: height * .02, left: width * .05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                upperText!,
                style: TextStyle(
                  fontSize: height * .028,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                lowerText!,
                style: TextStyle(
                    fontSize: height * .018, color: Colors.grey[700]),
              )
            ],
          ),
        ),
      ],
    );
  }
}
