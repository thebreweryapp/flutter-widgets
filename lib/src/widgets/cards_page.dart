import 'package:flutter/material.dart';
import 'brewery_large_card.dart';
import 'brewery_medium_card.dart';

class CardsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20.0, bottom: 10.0),
            child: Text('Brewery Large Card'),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0, bottom: 10.0),
            child: BreweryLargeCard(
              title: "Sample Title Here",
              image: Image.network(
                "https://nikonrumors.com/wp-content/uploads/2014/03/Nikon-1-V3-sample-photo.jpg",
                fit: BoxFit.fitWidth,
              ),
              desc:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pharetra elementum bibendum. Cras viverra, tortor non porta vestibulum, tortor quam venenatis dui, id semper nisi nibh ut velit. Curabitur viverra",
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0, bottom: 10.0),
            child: Text('Brewery Medium Card'),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0, bottom: 10.0),
            child: BreweryMediumCard(
              title: "Sample Title Here",
              image: Image.network(
                "https://nikonrumors.com/wp-content/uploads/2014/03/Nikon-1-V3-sample-photo.jpg",
                fit: BoxFit.fitWidth,
              ),
              iconButtons: <IconButton>[
                IconButton(
                  icon: Icon(Icons.info),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
