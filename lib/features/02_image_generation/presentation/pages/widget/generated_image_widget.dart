import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/utils/values_manager.dart';
import '../../../domain/entities/image.dart';

class GeneratedImageWidget extends StatelessWidget {
  final ImageModel imageGenerationModelData;
  const GeneratedImageWidget(
      {super.key, required this.imageGenerationModelData});

  @override
  Widget build(BuildContext context) {
    return
       Center(
        child: MasonryGridView.builder(
            gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
            ),
            mainAxisSpacing: 3,
            crossAxisSpacing: 3,
            itemCount: imageGenerationModelData.imageUrl.length,
            itemBuilder: (context, index) {
              final generatedImage = imageGenerationModelData.imageUrl[index];
              return Center(
                child: Container(
                     clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50)
                  ),
                  height: MediaQuery.of(context).size.height/2,
                  width: MediaQuery.of(context).size.width*1,
                    child: CachedNetworkImage(
                      imageUrl: generatedImage.url,
                      fit: BoxFit.fill,
                      progressIndicatorBuilder: (context, url, downloadProgress) =>
                          SizedBox(
                              height: AppSize.s150,
                              width: AppSize.s150,
                              child: Shimmer.fromColors(
                                baseColor: Colors.grey.withOpacity(.3),
                                highlightColor: Colors.grey,
                                child: Container(
                                  height: AppSize.s220,
                                  width: AppSize.s130,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(4)),
                                ),
                              )),
                      errorWidget: (context, url, error) => const Icon(Icons.error),
                    ),

                ),
              );
            }),
       );

  }
}
