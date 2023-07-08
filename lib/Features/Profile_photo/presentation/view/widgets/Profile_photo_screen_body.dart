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
            padding: EdgeInsets.only(left: width * .07, top: 5, bottom: 5),
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
          icon != Icons.phone
              ? Padding(
                  padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * .03),
                  child: Center(
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: IconButton(
                        icon: Icon(
                          Icons.edit,
                          color: defualtColor2(),
                        ),
                        onPressed: () {
                          showModalBottomSheet(
                            backgroundColor: Colors.transparent,
                            context: context,
                            builder: (builder) => AttachmentContainer(
                              textFormFieldLabel: upperText,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                )
              : Container()
        ],
      ),
    );
  }
}

class AttachmentContainer extends StatelessWidget {
  AttachmentContainer({Key? key, required this.textFormFieldLabel})
      : super(key: key);
  String? textFormFieldLabel;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(bottom: height * .374),
      child: SizedBox(
        height: 150,
        width: MediaQuery.of(context).size.width,
        child: Card(
          margin: const EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 10, left: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: textFormFieldLabel,
                        prefix: const SizedBox(width: 10),
                        hintText: "Enter your $textFormFieldLabel",
                        disabledBorder: InputBorder.none),
                  ),
                ),
                TextButton(onPressed: () {}, child: const Text("save"))
              ],
            ),
          ),
        ),
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
