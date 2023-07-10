import 'dart:io';
import 'package:chatapp/Features/Home_App/Presentation/View/Widget/uploaded_stories.dart';
import 'package:chatapp/Features/Home_App/Presentation/View_model/Home/home_cubit.dart';
import 'package:chatapp/core/utils/functions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyStatusItem extends StatelessWidget {
  const MyStatusItem({Key? key, required this.cubit, required this.storyImage})
      : super(key: key);

  final HomeCubit cubit;
  final File? storyImage;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Container(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.04, vertical: height * 0.01),
          color: Colors.grey.withOpacity(0.1),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  navigator(
                    context,
                    const UploadedStories(),
                  );
                },
                child: CircleAvatar(
                  radius: height * 0.05,
                  backgroundColor: Colors.grey,
                  child: CircleAvatar(
                    radius: height * 0.046,
                    backgroundImage: storyImage == null
                        ? const AssetImage('assets/images/test.jpg')
                        : FileImage(storyImage!) as ImageProvider,
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: width * 0.03, top: height * 0.01),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'MY Status',
                      style: TextStyle(
                        fontSize: height * 0.03,
                        fontFamily: 'Dosis',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding:
                    EdgeInsets.only(top: height * 0.01, right: width * 0.03),
                child: CircleAvatar(
                  radius: height * 0.03,
                  backgroundColor: Colors.grey.withOpacity(
                    0.5,
                  ),
                  child: IconButton(
                    onPressed: () {
                      cubit.getStoryImage();
                    },
                    icon: Icon(
                      Icons.camera_alt,
                      size: height * 0.035,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: height * 0.01,
                ),
                child: CircleAvatar(
                  radius: height * 0.03,
                  backgroundColor: Colors.grey.withOpacity(0.5),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.edit,
                      size: height * 0.035,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
