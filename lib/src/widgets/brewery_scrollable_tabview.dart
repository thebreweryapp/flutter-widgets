import 'package:flutter/material.dart';
import 'brewery_tab_view_item.dart';

class BreweryTabView extends StatelessWidget {
  final List<BreweryTabViewItem> tabViewList;
  final double elevation;
  final bool isScrollable;

  const BreweryTabView({
    Key key,
    @required this.tabViewList,
    this.elevation = 16.0,
    this.isScrollable = false,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabViewList.length,
      child: Scaffold(
          appBar: AppBar(
            elevation: elevation,
            titleSpacing: 0,
            bottom: PreferredSize(
                child: TabBar(
                    unselectedLabelColor: Colors.white.withOpacity(0.3),
                    indicatorColor: Colors.white,
                    isScrollable: isScrollable,
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
        child: tabViewItem.tab,
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
