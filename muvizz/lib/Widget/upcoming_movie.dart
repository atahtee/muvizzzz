import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:muvizz/Model/movie_model.dart';

class UpcomingMovieWidget extends StatelessWidget {
  const UpcomingMovieWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 360,
      child: CarouselSlider.builder(
        itemCount: upcoming.length,
        options: CarouselOptions(
            height: 360, pageSnapping: false, viewportFraction: 0.6),
        itemBuilder: (context, index, _) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      image: AssetImage(
                        upcoming[index].assetImage,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                upcoming[index].title,
                style: Theme.of(context).textTheme.bodyLarge,
                maxLines: 1,
              )
            ],
          );
        },
      ),
    );
  }
}
