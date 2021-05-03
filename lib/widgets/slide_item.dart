import 'package:flutter/material.dart';
import 'package:pdm2021/models/slide_model.dart';

class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      //Coluna do slide
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(slideModeList[index].imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 40),
        Text(
          slideModeList[index].title,
          style: TextStyle(fontSize: 22),
        ),
        SizedBox(height: 20),
        Text(
          slideModeList[index].description,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
