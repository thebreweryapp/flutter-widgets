import 'package:flutter/material.dart';
import '../widgets/brewery_scrollable_tabview.dart';
import '../widgets/brewery_tab_view_item.dart';

class TabsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BreweryTabView(
      tabViewList: createSampleTabViews(),
      isScrollable: true,
    );
  }

  List<BreweryTabViewItem> createSampleTabViews() {
    var tabscreens = <BreweryTabViewItem>[];
    tabscreens.add(BreweryTabViewItem(
        Text('Brewery Tab 1'),
        Container(
          child: Center(
            child: Text('Tab 1'),
          ),
        )));
    tabscreens.add(BreweryTabViewItem(
        Container(
          child: Icon(Icons.archive),
        ),
        Container(
          child: Center(
            child: Text('Archive Tab 2'),
          ),
        )));
    tabscreens.add(BreweryTabViewItem(
        Container(
          child: Row(children: [
            Icon(Icons.camera),
            Text('Camera'),
          ]),
        ),
        Container(
          child: Center(
            child: Text('Camera Tab 3'),
          ),
        )));
    tabscreens.add(BreweryTabViewItem(
        Container(
          child: Row(children: [
            Icon(Icons.android),
            Text('Android Tab'),
          ]),
        ),
        Container(
          child: Center(
            child: Text('Android Tab 4'),
          ),
        )));
    tabscreens.add(BreweryTabViewItem(
        Container(
          child: Row(children: [
            Icon(Icons.battery_charging_full),
            Text('Battery Tab'),
          ]),
        ),
        Container(
          child: Center(
            child: Text('Battery Tab 5'),
          ),
        )));

    return tabscreens;
  }
}
