
import 'package:chatapp/Features/Home_App/Presentation/View/Widget/contact_status_item.dart';
import 'package:chatapp/Features/Home_App/Presentation/View/Widget/image_story.dart';
import 'package:chatapp/Features/Home_App/Presentation/View/Widget/my_status_item.dart';
import 'package:chatapp/Features/Home_App/Presentation/View_model/Home/home_cubit.dart';
import 'package:chatapp/core/utils/functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StoryScreenBody extends StatelessWidget {
  const StoryScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var cubit = HomeCubit.get(context);
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state is PickedStoryImageSuccessState) {
          navigator(
             context,
            ImageStory(
              story: cubit.stories,
              storyImage: cubit.storyImage,
            ),
          );
        }
      },
      builder: (context, state) {
        return SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyStatusItem(
                cubit: cubit, storyImage: cubit.storyImage,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: height * 0.005,
                  left: width * 0.035,
                  bottom: height * 0.005
                ),
                child: Text(
                  'VIEWED UPDATES',
                  style: TextStyle(
                      fontSize: height * 0.02,
                      color: Colors.grey,
                      fontFamily: 'Dosis',
                      fontWeight: FontWeight.bold),
                ),
              ),
              ListView.builder(
                itemBuilder: (context, index) => const StoryStatusItem(),
                itemCount: 10,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
              ),
            ],
          ),
        );
      },
    );
  }
}