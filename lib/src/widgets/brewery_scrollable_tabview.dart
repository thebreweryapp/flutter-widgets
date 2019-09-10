import 'package:flutter/material.dart';
import 'brewery_tab_view_item.dart';

class BreweryTabView extends StatelessWidget {
  final List<BreweryTabViewItem> children;
  final double elevation;
  final bool isScrollable;
  final Function(int) onTap;

  const BreweryTabView({
    Key key,
    @required this.children,
    this.elevation = 16.0,
    this.isScrollable = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: children.length,
      child: Scaffold(
        appBar: AppBar(
          elevation: elevation,
          titleSpacing: 0,
          bottom: PreferredSize(
            child: TabBar(
              unselectedLabelColor: Colors.white.withOpacity(0.3),
              indicatorColor: Colors.white,
              isScrollable: isScrollable,
              tabs: _createTabs(),
              onTap: onTap,
            ),
            preferredSize: Size.fromHeight(30.0),
          ),
        ),
        body: TabBarView(
          children: _createTabViews(),
        ),
      ),
    );
  }

  List<Widget> _createTabs() {
    var items = <Widget>[];

    for (final tabViewItem in children) {
      items.add(
        Tab(child: tabViewItem.tab),
      );
    }
    return items;
  }

  List<Widget> _createTabViews() {
    var items = <Widget>[];

    for (final tabViewItem in children) {
      items.add(tabViewItem.view);
    }
    return items;
  }
}
