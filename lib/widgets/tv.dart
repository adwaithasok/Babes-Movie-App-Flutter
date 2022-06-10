import 'package:flutter/material.dart';
import 'package:movie_app/utils/exceptiontextclr.dart';

class TV extends StatelessWidget {
  final List tv;

  const TV({Key? key, required this.tv}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const modified_text(
            text: 'Popular Tv shows',
            size: 17,
            color: Colors.white,
          ),
          SizedBox(height: 15,),
          Container(
            height: 200,
            child: ListView.builder(
                itemCount: tv.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {

                    },
                    child: Container(
                        padding: EdgeInsets.all(5),

                      width: 250,
                      child: Column(
                        children: [
Container(
  width: 250,
  height: 140,
  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
    image: DecorationImage(image: NetworkImage(

     'https://image.tmdb.org/t/p/w500' +
                                          tv[index]['poster_path']

    ),fit: BoxFit.cover
    )
  ),
),
SizedBox(height: 8,),
Container(
  child: modified_text(text: tv[index]['original_name']!=null?tv[index]['original_name']:'ms marvel',color: Colors.white, size: 10,),
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
