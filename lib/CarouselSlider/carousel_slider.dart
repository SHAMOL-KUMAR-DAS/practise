import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:practise/AtoZSorting/model.dart';

class Carousel extends StatefulWidget {
  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Carousel Slider'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: CarouselSlider.builder(
            itemCount: Sorting().list.length,
          options: CarouselOptions(
            height: MediaQuery.of(context).size.height * 0.2,
            autoPlay: true,
            viewportFraction: 0.65,

          ),
            itemBuilder: (context, index, realindex){
              var data = Sorting().list;
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 3),// Spacing between one to another
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                    child: Image(image: AssetImage(data[index].image),fit: BoxFit.cover,)),
              );
            },

        ),
      )
    );
  }
}
