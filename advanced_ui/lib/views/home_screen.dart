import 'package:advanced_ui/resources/widgets/cover_image_widget.dart';
import 'package:advanced_ui/resources/widgets/custom_button.dart';
import 'package:advanced_ui/resources/widgets/description_widget.dart';
import 'package:advanced_ui/resources/widgets/title_widget.dart';
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
            CoverImageWidget(imageUrl:"assets/images/oslake.jpg"),
            //  title cover
            TitleWidget(name: "Oschinen Lake Campground", address: "Kendertage, Swizerland", rate: 45),
            // buttons
            Container(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: CustomButton(
                        iconWidget: Icon(Icons.call, color: Colors.blue,),
                        textButton: "call",
                        onPress: (){
                          print("Calling...");
                        }),
                  ),
                  Expanded(
                    flex: 1,
                      child: CustomButton(
                          iconWidget: Icon(Icons.navigation, color: Colors.blue,),
                          textButton: "route",
                          onPress: (){
                            print("Routing..");
                          }),
                  ),
                  Expanded(
                    flex: 1,
                      child: CustomButton(
                          iconWidget: Icon(Icons.share, color: Colors.blue,),
                          textButton: "share",
                          onPress: (){
                            print("Sharing...");
                          }),
                  ),
                ],
              ),
            ),
            DescriptionWidget(text: "Oeschinen Lake or Oeschinensee or Lago di Oeschinen, with pristine nature and turquoise blue waters, is literally heaven on earth. High mountains rise on all sides of the lake. And Oeschinensee is like a sparkling gem in the centre. The lake is at the foot of Mountains – Blüemlisalp, Oeschinenhorn, Fründenhorn and Doldenhorn. Osechinen Lake is fed by underwater streams as well as glacial waterfalls falling from the top of these mountains. Make sure to check the webcam for weather conditions before you go here. "
                "And by the way, Oeschinen Lake is part of the UNESCO World Heritage Sites list."),


            // descriptions
          ],
        ),

      ),
    );
  }
}
