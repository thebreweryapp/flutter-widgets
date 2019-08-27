import 'package:flutter/material.dart';
import '../widgets/brewery_scrollable_tabview.dart';
import '../widgets/brewery_tab_view_item.dart';

class TabsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var tabscreens = <BreweryTabViewItem>[];
    tabscreens.add(BreweryTabViewItem(
        'Tab 1',
        Container(
          child: Center(
            child: Text('Tab 1'),
          ),
        )));
    tabscreens.add(BreweryTabViewItem(
        'Sample Tab 2',
        Container(
          child: Center(
            child: Text('Tab 2'),
          ),
        )));
    tabscreens.add(BreweryTabViewItem(
        'Scrollable Tab 3',
        Container(
          child: Center(
            child: Text('Tab 3'),
          ),
        )));
    tabscreens.add(BreweryTabViewItem(
        'Scrollable Tab 4',
        Container(
          child: Center(
            child: Text('Tab 4'),
          ),
        )));

    return ScrollableTabView(
      tabViewList: tabscreens,
    );
  }
}
