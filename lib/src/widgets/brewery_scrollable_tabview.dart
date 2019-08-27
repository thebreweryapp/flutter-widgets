import 'package:flutter/material.dart';
import 'brewery_tab_view_item.dart';

class ScrollableTabView extends StatelessWidget {
  final List<BreweryTabViewItem> tabViewList;
  final double elevation;

  const ScrollableTabView({
    Key key,
    @required this.tabViewList,
    this.elevation = 16.0,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabViewList.length,
      child: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            titleSpacing: 0,
            bottom: PreferredSize(
                child: TabBar(
                    isScrollable: true,
                    unselectedLabelColor: Colors.white.withOpacity(0.3),
                    indicatorColor: Colors.white,
                    tabs: createTabs()),
                preferredSize: Size.fromHeight(30.0)),
          ),
          body: TabBarView(
            children: createTabViews(),
          )),
    );
  }

  List<Widget> createTabs() {
    var items = <Widget>[];

    for (final tabViewItem in tabViewList) {
      items.add(Tab(
        child: Text(tabViewItem.title),
      ));
    }
    return items;
  }

  List<Widget> createTabViews() {
    var items = <Widget>[];

    for (final tabViewItem in tabViewList) {
      items.add(tabViewItem.view);
    }
    return items;
  }
}
