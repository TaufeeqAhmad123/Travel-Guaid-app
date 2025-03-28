import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:travel_guaid_app/const/color.dart';
import 'package:travel_guaid_app/const/const.dart';
import 'package:travel_guaid_app/const/style.dart';
import 'package:travel_guaid_app/screen/detail_screen.dart';
import 'package:travel_guaid_app/widget/destination_card.dart'
    show destinationCard;
import 'package:travel_guaid_app/widget/hotDestinationCard.dart';
import 'package:travel_guaid_app/widget/review_widget.dart';
import 'package:travel_guaid_app/widget/topAppBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        width: MediaQuery.of(context).size.width - 80,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black.withOpacity(0.2),
              Color.fromARGB(179, 115, 120, 107),
            ],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(
                CupertinoIcons.guitars,
                size: 35,
                color: AppColor.primaryColor,
              ),
              onPressed: null,
            ),
            IconButton(
              icon: Icon(Icons.place, color: AppColor.primaryColor, size: 40),
              onPressed: null,
            ),
            IconButton(
              icon: Icon(
                CupertinoIcons.person_2,
                color: Colors.white60,
                size: 40,
              ),
              onPressed: null,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [const Color(0xffe5a13e), const Color(0xffaa825a)],
          ),
        ),
        child: ListView(
          children: [
            topAppBar()
                .animate()
                .fadeIn(duration: 500.ms, curve: Curves.easeInOut)
                .slide(delay: 300.ms),
            SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: destination.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: index == 0 ? 30 : 0),
                    child: destinationCard(
                      image: destination[index]['imagePath']!,
                    ).animate().fade().scale(
                      begin: Offset(0, 0),
                      end: Offset(1, 1),
                      duration: 500.ms,
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                left: 25,
                right: 25,
                bottom: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PrimaryText(text: 'Hot Destination', size: 24),
                  PrimaryText(text: 'More', size: 16, color: Colors.white24),
                ],
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: destination.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: index == 0 ? 30 : 0),
                    child: hotDestinationcard(
                          
                          image: hotDestination[index]['imagePath']!,
                          placeName: hotDestination[index]['placeName']!,
                          touristPlaceCount:
                              hotDestination[index]['placeCount']!,
                        )
                        .animate()
                        .slideX(begin: 0.8, end: 0, duration: 500.ms)
                        .fadeIn(duration: 500.ms, curve: Curves.easeInOut),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                left: 25,
                right: 25,
                bottom: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PrimaryText(text: 'Visiter Reviews', size: 20),
                  PrimaryText(
                    text: '22 Reviews',
                    size: 14,
                    color: Colors.white24,
                  ),
                ],
              ),
            ),
            reviewWidget(context)
                .animate()
                .fade(duration: 500.ms, curve: Curves.easeInOut)
                .slide(delay: 300.ms),
          ],
        ),
      ),
    );
  }
}
