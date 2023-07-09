import 'package:cached_network_image/cached_network_image.dart';
import 'package:chatapp/Features/Home_App/Presentation/View_model/Home/home_cubit.dart';

import 'package:chatapp/core/styles/colors.dart';
import 'package:flutter/material.dart';

class ImageViewStory extends StatelessWidget {
  const ImageViewStory({super.key, required this.cubit, required this.index});
  final HomeCubit cubit;
  final int index;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: cubit.stories[index] ,
      progressIndicatorBuilder: (context, url, downloadProgress) =>
          Center(
            child: Center(
              child: CircularProgressIndicator(
                  color: defualtColor1(),
                  value: downloadProgress.progress),
            ),
          ),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}