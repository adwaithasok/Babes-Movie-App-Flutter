import 'package:flutter/material.dart';
import 'package:movie_app/utils/exceptiontextclr.dart';

class TopRated extends StatelessWidget {
  final List toprated;

  const TopRated ({Key? key, required this.toprated}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const modified_text(
            text: 'Top Rated Movies',
            size: 17,
            color: Colors.white,
          ),
          SizedBox(height: 15,),
          Container(
            height: 270,
            child: ListView.builder(
                itemCount: toprated.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {

                    },
                    child: Container(
                      width: 140,
                      child: Column(
                        children: [
Container(
  height: 200,
  decoration: BoxDecoration(
    image: DecorationImage(image: NetworkImage(

     'https://image.tmdb.org/t/p/w500' +
                                          toprated[index]['poster_path']

    ))
  ),
),
SizedBox(height: 8,),
Container(
  child: modified_text(text: toprated[index]['title']!=null?toprated[index]['title']:'ms marvel',color: Colors.white, size: 10,),
)

                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
