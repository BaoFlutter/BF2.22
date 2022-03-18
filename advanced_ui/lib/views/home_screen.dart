import 'package:advanced_ui/resources/widgets%20/button_widget.dart';
import 'package:advanced_ui/resources/widgets%20/cover_image_widget.dart';
import 'package:advanced_ui/resources/widgets%20/description_widget.dart';
import 'package:advanced_ui/resources/widgets%20/title_widget.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            // image cover
            CoverImageWidget(imageUrl: "assets/images/lake_camp.jpeg"),
            // title
            TitleWidget(
                name: "Oeschine Lake Campground",
                address: "Kanderstage, Switzerland",
                starNumber: "41"),
            Container(
              padding: const EdgeInsets.only(top: 40, bottom: 40),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                      child: ButtonWidget(
                          onPressed: (){

                          },
                          iconData: Icons.call,
                          buttonText: "call",
                          buttonColor: Colors.blue),),
                  Expanded(
                    flex: 1,
                    child: ButtonWidget(
                        onPressed: (){

                        },
                        iconData: Icons.navigation,
                        buttonText: "route",
                        buttonColor: Colors.blue),),
                  Expanded(
                    flex: 1,
                    child: ButtonWidget(
                        onPressed: (){

                        },
                        iconData: Icons.share,
                        buttonText: "share",
                        buttonColor: Colors.blue),),
                ],
              ),
            ),
            DescriptionWidget(text: "Oeschinen Lake or Oeschinensee as the Swiss call it,"
                " is one of the best lakes in Switzerland, if not on the earth. "
                "Oeschinen Lake lies in the Kandertal valley in Bernese Oberland region of Switzerland. "
                "If you love swimming, rowing, fishing and a barbeque by the lake, or just the breathtaking Alpine views, then this place must be on top of your Switzerland Bucketlist. Moreover, The mountains and valleys around here are an open invitation to serious hikers!"),



            // buttons

            // description

          ],
        ),
      ),
    );
  }
}
