import 'package:chatapp/core/styles/colors.dart';
import 'package:chatapp/core/utils/assets.dart';
import 'package:flutter/material.dart';

class ProfilePhotoScreenBody extends StatelessWidget {
  const ProfilePhotoScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ChangeProfilePhoto(),
        EditProfileList(),
      ],
    );
  }
}

class ChangeProfilePhoto extends StatelessWidget {
  const ChangeProfilePhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(top: height * .05, left: width * .07),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          SizedBox(
            height: height * .2,
            child: CircleAvatar(
              radius: width * .2,
              backgroundImage: const AssetImage(AppImage.chatPhoto),
            ),
          ),
          CircleAvatar(
            backgroundColor: defualtColor2(),
            radius: height * .03,
            child: const Icon(
              Icons.camera_alt,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}

class EditProfileList extends StatelessWidget {
  const EditProfileList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
        itemBuilder: (context, index) {
          return EditProfileItem(
            icon: editProfileIcon[index],
            upperText: editProfileUpperText[index],
            lowerText: editProfileLowerText[index],
          );
        },
        separatorBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: width * .07,top: 5 ,bottom: 5),
            child: Container(
              color: Colors.grey[300],
              width: double.infinity,
              height: 1,
            ),
          );
        },
        itemCount: editProfileIcon.length);
  }
}

class EditProfileItem extends StatelessWidget {
  const EditProfileItem(
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
    return Padding(
      padding: EdgeInsets.only(top: height * .01, left: width * .07),
      child: Row(
        children: [
           Center(
            child: Icon(
              icon,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: height * .02, left: width * .05),
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    upperText!,
                    style:
                        TextStyle(fontSize: height * .02, color: Colors.grey),
                  ),
                  /*const SizedBox(
                    height: 10,
                  ),*/
                  Text(
                    lowerText!,
                    style: TextStyle(
                      fontSize: height * .028,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
          ),
          const Spacer(),
          icon !=Icons.phone ?
          Padding(
            padding:  EdgeInsets.only(right: MediaQuery.of(context).size.width*.03),
            child: Center(
                child: Align(
              alignment: Alignment.bottomRight,
              child: Icon(
                Icons.edit,
                color: defualtColor2(),
              ),
            )
                // ),
                ),
          ) :Container()
        ],
      ),
    );
  }
}

List<IconData> editProfileIcon = [
  Icons.key,
  Icons.info_outline,
  Icons.phone,
];
List<String> editProfileUpperText = [
  'Name',
  'About',
  'Phone',
];
List<String> editProfileLowerText = [
  'Joe',
  'hey .................',
  '+20115698651',
];
