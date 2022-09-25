import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'Widget/banner_widget.dart';
import 'Widget/category_widget.dart';
import 'Widget/now_playing_widget.dart';
import 'Widget/section_tile_widget.dart';
import 'Widget/upcoming_movie.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
          bottom: MediaQuery.of(context).padding.top,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text("Welcome atahtee", style: Theme.of(context).textTheme.titleMedium,),
            ),
            const SizedBox(height: 16,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text("Book your favorite movie here!", style: Theme.of(context).textTheme.titleLarge,),
            ),
            const SizedBox(height: 16,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: BannerWidget(),
            ),
            const SizedBox(height: 16,),
            const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 24.0,),
              child: SectionTitleWidget(
                title: "Category",
              ),
            ),
            const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
              child: CategoryWidget(),
            ),
            const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 24.0,),
              child: SectionTitleWidget(
                title: "Now Playing",
              ),
            ),
            const SizedBox(height: 16,),
            const NowPlayingWidget(),
            const SizedBox(height: 16,),
            const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 24.0, ),
              child: SectionTitleWidget(
                title: "Upcoming",
              ),
            ),
            const SizedBox(height: 16,),
            const UpcomingMovieWidget(),
          ],
        ),
      ),
    );
  }
}
