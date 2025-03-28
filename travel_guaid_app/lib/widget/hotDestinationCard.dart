import 'package:flutter/material.dart';
import 'package:travel_guaid_app/const/color.dart';
import 'package:travel_guaid_app/const/style.dart';
import 'package:travel_guaid_app/screen/detail_screen.dart';

class hotDestinationcard extends StatelessWidget {
 
  final String image,placeName,touristPlaceCount;
   hotDestinationcard({super.key, required this.image, required this.placeName, required this.touristPlaceCount});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: (){
               Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                  return  DetailScreen(imagePath: image,);
                                  },
                                ),
                              );
            },
      child: Stack(
        children: [
          Container(
              margin: EdgeInsets.only(right: 20),
              height: 200,
              width: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
              ),
            ),
          
          Positioned(
            left: 0,
            top: 0,
            child: Opacity(
              opacity: 1,
              child: Container(
                margin: EdgeInsets.only(right: 20),
                height: 200,
                width: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [AppColor.secondaryColor, Colors.transparent],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             PrimaryText(
                      text: placeName, size: 15, fontWeight: FontWeight.w800),
                  SizedBox(height: 4),
                  PrimaryText(
                      text: touristPlaceCount,
                      color: Colors.white54,
                      size: 10,
                      fontWeight: FontWeight.w800)
      
          ],))
        ],
      ),
    );
  }
}

