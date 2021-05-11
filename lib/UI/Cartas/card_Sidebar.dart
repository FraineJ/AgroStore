import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CardSlider extends StatefulWidget {
  const CardSlider({Key key}) : super(key: key);

  @override
  _CardSliderState createState() => _CardSliderState();
}

class _CardSliderState extends State<CardSlider> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 40.0,
        ),

        CarouselSlider(
            items: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(5.0),
                  image: DecorationImage(
                    image:  AssetImage("assets/img/Banner.png"),
                    fit: BoxFit.cover
                  )
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                        image:  AssetImage("assets/img/persona.jpg"),
                        fit: BoxFit.cover
                    )
                ),
              ),
            ],
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height * 1/4 - 10,
              aspectRatio: 16/9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 4),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              onPageChanged: null,
              scrollDirection: Axis.horizontal,
            )
        )
      ],
    );
  }
}
