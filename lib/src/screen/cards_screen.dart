import 'package:brewery_flutter_widget/src/widgets/brewery_card.dart';
import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {
  final title = 'Sample Title';
  final description =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pharetra elementum bibendum. Cras viverra, tortor non porta vestibulum, tortor quam venenatis dui, id semper nisi nibh ut velit. Curabitur viverra';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Text('Cover only'),
              BreweryCard(cover: _getCover),
            ],
          ),
          SizedBox(height: 20.0),
          Column(
            children: <Widget>[
              Text('Cover and title'),
              BreweryCard(
                cover: _getCover,
                titleText: title,
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Column(
            children: <Widget>[
              Text('Cover, title and description'),
              BreweryCard(
                cover: _getCover,
                titleText: title,
                descriptionText: description,
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Column(
            children: <Widget>[
              Text('Cover with overlay, title, description and footer'),
              BreweryCard(
                overlayColor: Colors.black.withOpacity(0.5),
                cover: _getCover,
                titleText: title,
                descriptionText: description,
                footer: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    MaterialButton(
                      child: Text(
                        'BUTTON 1',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        print('Button 1 Pressed');
                      },
                    ),
                    MaterialButton(
                      child: Text(
                        'BUTTON 2',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        print('Button 2 Pressed');
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Column(
            children: <Widget>[
              Text(
                'Cover with overlay, custom title, custom description and footer',
              ),
              BreweryCard(
                overlayColor: Colors.black.withOpacity(.5),
                cover: _getCover,
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
                footer: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    MaterialButton(
                      child: Text(
                        'BUTTON 1',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        print('Button 1 Pressed');
                      },
                    ),
                    MaterialButton(
                      child: Text(
                        'BUTTON 2',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        print('Button 2 Pressed');
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget get _getCover => Image.network(
        "https://nikonrumors.com/wp-content/uploads/2014/03/Nikon-1-V3-sample-photo.jpg",
        height: 175.0,
        width: double.infinity,
        fit: BoxFit.cover,
      );
}
