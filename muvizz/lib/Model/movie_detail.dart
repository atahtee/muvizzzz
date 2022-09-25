import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:muvizz/Model/widget/movie_info_widget.dart';
import 'package:muvizz/theme/app_color.dart';

import 'movie_model.dart';

class MovieDetail extends StatelessWidget {
  const MovieDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final movie = ModalRoute.of(context)?.settings.arguments as Movie;
    return Scaffold(
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios_new_rounded)),
          centerTitle: true,
          title: Text("Movie Detail",
              style: Theme.of(context).textTheme.headlineSmall),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            image: DecorationImage(
                              image: AssetImage(movie.assetImage
                              ),
                              fit: BoxFit.fill,
                            )),
                      )),
                      const SizedBox(width: 32,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MovieInfoWidget(
                            iconData: Icons.videocam_rounded,
                            title: "Genre",
                            value: movie.type,
                          ),
                          MovieInfoWidget(
                            iconData: Icons.access_time_rounded,
                            title: "Duration",
                            value: movie.type,
                          ),
                          MovieInfoWidget(
                            iconData: Icons.star_sharp,
                            title: "Rating",
                            value: movie.type,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 16,),
                Text(
                  movie.title, style: Theme.of(context).textTheme.headline5,),
                const Divider(height: 32,),
                Text(
                  "synopsis", style: Theme.of(context).textTheme.bodyLarge,),
                const Divider(height: 32,),
                Text(
                  movie.synopsis, style: Theme.of(context).textTheme.bodyMedium,),
              ]
              ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Container(
          decoration: BoxDecoration(color: AppColor.primaryColor, borderRadius: BorderRadius.circular(50)
          ),
          padding: const EdgeInsets.symmetric(vertical: 26, horizontal: 32),
          child: Text("Book space Now", style: Theme.of(context).textTheme.bodyLarge),
        ),
        
      );
  }
}
