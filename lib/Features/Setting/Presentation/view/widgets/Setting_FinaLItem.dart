import 'package:flutter/material.dart';

class SettingFinalIem extends StatelessWidget {
  const SettingFinalIem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(top: height * .02, left: width * .05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'from',
            style:
                TextStyle(fontSize: height * .018, color: Colors.grey[700]),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'J A',
            style: TextStyle(
              fontSize: height * .028,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
