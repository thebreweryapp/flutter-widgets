import 'package:flutter/material.dart';

import '../../widgets/brewery_card.dart';

class CardsDemoScreen extends StatelessWidget {
  final Function(String) onItemSelected;

  CardsDemoScreen({this.onItemSelected});

  final _title = 'Sample Title';
  final _description =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pharetra elementum bibendum. Cras viverra, tortor non porta vestibulum, tortor quam venenatis dui, id semper nisi nibh ut velit. Curabitur viverra';

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return ListTile(
          title: _getItem(index),
          onTap: () {
            onItemSelected(_getCodeSnippet(index));
          },
        );
      },
    );
  }

  Widget _getItem(int index) {
    switch (index) {
      case 1:
        return _item(
          'Cover and title',
          BreweryCard(
            cover: _cover,
            titleText: _title,
          ),
        );

      case 2:
        return _item(
          'Cover, title and description',
          BreweryCard(
            cover: _cover,
            titleText: _title,
            descriptionText: _description,
          ),
        );

      case 3:
        return _item(
          'Cover with overlay, title, description and footer',
          BreweryCard(
            overlayColor: Colors.black.withOpacity(0.5),
            cover: _cover,
            titleText: _title,
            descriptionText: _description,
            footer: _footer,
          ),
        );

      case 4:
        return _item(
          'Cover with overlay, custom title, custom description and footer',
          BreweryCard(
            color: Colors.black,
            overlayColor: Colors.blue.withOpacity(.5),
            cover: _cover,
            title: Text(
              _title,
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 30.0,
              ),
            ),
            description: Text(
              _description,
              style: TextStyle(
                color: Colors.purple,
                fontSize: 15.0,
              ),
            ),
            footer: _footer,
          ),
        );

      default:
        return _item(
          'Cover only',
          BreweryCard(cover: _cover),
        );
    }
  }

  Widget _item(String title, BreweryCard card) {
    return Column(
      children: <Widget>[Text(title), card],
    );
  }

  Widget get _footer => Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          _createButton(title: 'BUTTON 1'),
          _createButton(title: 'BUTTON 2'),
        ],
      );

  Widget _createButton({String title}) {
    return MaterialButton(
      child: Text(
        title,
        style: TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.bold,
        ),
      ),
      onPressed: () {
        print('$title Pressed');
      },
    );
  }

  Widget get _cover => Image.network(
        "https://nikonrumors.com/wp-content/uploads/2014/03/Nikon-1-V3-sample-photo.jpg",
        height: 175.0,
        width: double.infinity,
        fit: BoxFit.cover,
      );

  String _getCodeSnippet(int index) {
    switch (index) {
      case 1:
        return """
BreweryCard(
  cover: _cover,
  titleText: _title,
);
""";

      case 2:
        return """
BreweryCard(
  cover: _cover,
  titleText: _title,
  descriptionText: _description,
);
""";

      case 3:
        return """
BreweryCard(
  overlayColor: Colors.black.withOpacity(0.5),
  cover: _cover,
  titleText: _title,
  descriptionText: _description,
  footer: _footer,
);
""";

      case 4:
        return """
BreweryCard(
  color: Colors.black,
  overlayColor: Colors.blue.withOpacity(.5),
  cover: _cover,
  title: Text(
    title,
    style: TextStyle(
      color: Colors.yellow,
      fontSize: 30.0,
    ),
  ),
  description: Text(
    description,
    style: TextStyle(
      color: Colors.purple,
      fontSize: 15.0,
    ),
  ),
  footer: _footer,
);
""";

      default:
        return """
BreweryCard(cover: _cover);
""";
    }
  }
}
