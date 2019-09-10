import 'package:flutter/material.dart';

import '../../widgets/brewery_blurimage.dart';

class ImagesDemoScreen extends StatelessWidget {
  final Function(String) onItemSelected;

  ImagesDemoScreen({
    Key key,
    @required this.onItemSelected,
  }) : super(key: key);

  String get _imagePath => 'assets/images/image1.jpg';

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (context, index) {
        return ListTile(
          title: Container(
            height: 200.0,
            child: BreweryBlurImage(
              path: _imagePath,
              width: double.infinity,
            ),
          ),
          onTap: () {
            onItemSelected(_getCodeSnippet(index));
          },
        );
      },
    );
  }

  String _getCodeSnippet(int index) {
    switch (index) {
      default:
        return """
BreweryBlurImage(
  path: _imagePath,
  width: double.infinity,
);
""";
    }
  }
}
