import 'package:flutter/material.dart';

import '../widgets/brewery_blurimage.dart';

class ImagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      child: BreweryBlurImage(
        path: 'assets/images/image1.jpg',
        width: double.infinity,
      ),
    );
  }
}
