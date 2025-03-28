import 'package:flutter/material.dart';
import 'package:travel_guaid_app/const/color.dart';
import 'package:travel_guaid_app/const/style.dart';
import 'package:travel_guaid_app/widget/hotDestinationCard.dart';

class DetailScreen extends StatefulWidget {
  final String imagePath;

  const DetailScreen({super.key, required this.imagePath});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 2000),
    );
    _controller.forward();
    _animation = Tween<double>(begin: 0, end: 520).animate(
      CurvedAnimation(parent: _controller, curve: const Interval(0, 0.5)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 20),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(widget.imagePath),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () => {Navigator.pop(context)},
                  icon: Icon(
                    Icons.chevron_left,
                    color: Colors.white70,
                    size: 40,
                  ),
                ),
                RawMaterialButton(
                  onPressed: null,
                  shape: CircleBorder(),
                  child: Image.asset('assets/info.png', width: 4),
                  fillColor: Colors.white30,
                  padding: EdgeInsets.all(8),
                ),
              ],
            ),
             
          ],
        ),
      ),
      bottomSheet: AnimatedBuilder(
          animation: _controller,
        
          builder: (context, child) {
            return Container(
              height: _animation.value, // Prevent overflow
             
              padding: EdgeInsets.only(top: 20, left: 30, right: 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [const Color(0xffe5a13e), const Color(0xffaa825a)],
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      PrimaryText(
                        text:
                            widget.imagePath == 'assets/city.jpg'
                                ? "NewYork"
                                : widget.imagePath == 'assets/japan-home.jpg'
                                ? 'Japan'
                                : 'America',
                        size: 24,
                      ),
                      SizedBox(height: 10),
                      PrimaryText(
                        text:
                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.',
                        size: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.white38,
                      ),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PrimaryText(
                            text: 'Tourist Places',
                            size: 20,
                            fontWeight: FontWeight.w600,
                          ),
                          PrimaryText(
                            text: '18',
                            size: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.white24,
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            hotDestinationcard(
                              image: 'assets/bridge.jpg',
                              placeName: 'AMERICA',
                              touristPlaceCount: '18 Tourist Place',
                            ),
                            hotDestinationcard(
                              image: 'assets/japan-home.jpg',
                              placeName: 'Japan',
                              touristPlaceCount: '18 Tourist Place',
                            ),
                            hotDestinationcard(
                              image: 'assets/tower.jpg',
                              placeName: 'NewYork',
                              touristPlaceCount: '18 Tourist Place',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
              ),
              
            );
          },
        ),
      
      
    );
  }
}
