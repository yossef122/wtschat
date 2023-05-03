import 'package:flutter/material.dart';

class NewCommunityWidget extends StatelessWidget {
  const NewCommunityWidget({Key? key,required this.text}) : super(key: key);
   final String ? text;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.only(left: width *.03,top: height*.01),
      child: Row(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                width: width * .17,
                height: height * .08,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white, width: 3)),
                child: Icon(
                  Icons.groups,
                  color: Colors.white,
                  size: height * .045,
                ),
              ),
             text!.contains('New Community') ?  CircleAvatar(
                radius: 11,
                backgroundColor: Colors.grey[200],
              ):Container(),
              text!.contains('New Community') ?const CircleAvatar(
                radius: 10.2,
                backgroundColor: Colors.greenAccent,
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ):Container()
            ],
          ),
          SizedBox(
            width: width * .03,
          ),
           Text(
            '$text',
            style:const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          )
        ],
      ),
    )
    ;
  }
}

