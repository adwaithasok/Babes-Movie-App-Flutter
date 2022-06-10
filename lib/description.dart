import 'package:flutter/material.dart';
import 'package:movie_app/utils/exceptiontextclr.dart';

class Description extends StatelessWidget {
  final String? name, description, bannerurl, posterurl, vote, launch_date;

  const Description({
    Key? key,
    this.name,
    this.description,
    this.bannerurl,
    this.posterurl,
    this.vote,
    this.launch_date,
  }) : super(key: key);

  String? get launch_on => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Container(
              height: 250,
              child: Stack(
                children: [
                  Positioned(
                      child: Container(
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                      bannerurl == null ? "" : bannerurl!,
                      fit: BoxFit.cover,
                    ),
                  )),
                  Positioned(
                      left: 10,
                      bottom: 10,
                      child: rating(
                        text: 'Average Rating - ' + (vote == null ? "" : vote!),
                        color: Colors.black,
                        size: 10,
                      ))
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
                padding: EdgeInsets.all(10),
                child: exceptiontextclr(
                  text: name ?? 'Text Not Available..',
                )),
            Container(
                padding: EdgeInsets.only(left: 10),
                child: modified_text(
                  text: 'Releasing On - ' +
                      (launch_date == null
                          ? "Text Not Available.."
                          : launch_date!),
                  size: 14,
                  color: Colors.black,
                )),
            Row(children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                height: 200,
                width: 100,
                child: Image.network(posterurl == null
                    ? "https://ik.imagekit.io/1cwoupuzu/Image_not_available_eD2q5kMwi.png?ik-sdk-version=javascript-1.4.3&updatedAt=1654853115933"
                    : posterurl!),
              ),
            ]),

 Flexible(
                child: Container(
                    padding: EdgeInsets.all(10),
                    child: descriptions(text: description ?? "Not Available", )),
 )

          ],
        ),
      ),
    );
  }
}
