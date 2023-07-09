
import 'package:chatapp/Features/Home_App/Presentation/View/Widget/imageViewStory.dart';
import 'package:chatapp/Features/Home_App/Presentation/View/Widget/smooth_indecator.dart';
import 'package:chatapp/Features/Home_App/Presentation/View_model/Home/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UploadedStories extends StatelessWidget {
  const UploadedStories({super.key,});
  @override
  Widget build(BuildContext context) {
    var pageController = PageController();
    var cubit = HomeCubit.get(context);
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 30,
                color: Colors.white,
              ),
            ),
            title: SmoothIndicator(
              pageController: pageController,
              length: cubit.stories.length,
            ),
            centerTitle: true,
          ),
          body: PageView.builder(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => Center(
              child: ImageViewStory(
                cubit: cubit,
                index: index,
              ),
            ),
            itemCount: cubit.stories.length,
            scrollDirection: Axis.horizontal,
            controller: pageController,
          ),
        );
      },
    );
  }
}