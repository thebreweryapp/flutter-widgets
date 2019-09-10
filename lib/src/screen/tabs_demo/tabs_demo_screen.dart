import 'package:flutter/material.dart';

import '../../widgets/brewery_scrollable_tabview.dart';
import '../../widgets/brewery_tab_view_item.dart';

class TabsDemoScreen extends StatefulWidget {
  final Function(String) onItemSelected;

  TabsDemoScreen({
    Key key,
    @required this.onItemSelected,
  }) : super(key: key);

  @override
  State<TabsDemoScreen> createState() => _TabsDemoScreenState();
}

class _TabsDemoScreenState extends State<TabsDemoScreen> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback(_afterLayout);
  }

  @override
  Widget build(BuildContext context) {
    return BreweryTabView(
      children: _buildChildren(),
      isScrollable: true,
      onTap: (index) {
        final _tabSnippet = _getTabSnippet(index);
        widget.onItemSelected(
          """
BreweryTabView(
  children: _buildChildren(),
  onTap: (index) {}
);

$_tabSnippet
""",
        );
      },
    );
  }

  List<BreweryTabViewItem> _buildChildren() {
    var tabscreens = <BreweryTabViewItem>[];
    tabscreens.add(
      BreweryTabViewItem(
        tab: Text('First Tab'),
        view: Container(
          child: Center(
            child: Text('Text Only'),
          ),
        ),
      ),
    );
    tabscreens.add(
      BreweryTabViewItem(
        tab: Container(
          child: Icon(Icons.looks_two),
        ),
        view: Container(
          child: Center(
            child: Text('Icon Only'),
          ),
        ),
      ),
    );
    tabscreens.add(
      BreweryTabViewItem(
        tab: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.phone_iphone),
              SizedBox(width: 8.0),
              Text('Third Tab'),
            ],
          ),
        ),
        view: Container(
          child: Center(
            child: Text('Horizontal Text and Icon'),
          ),
        ),
      ),
    );

    tabscreens.add(
      BreweryTabViewItem(
        tab: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.phone_android),
              SizedBox(width: 8.0),
              Text('Fourth Tab with Long Title'),
            ],
          ),
        ),
        view: Container(
          child: Center(
            child: Text('Vertical Text and Icon'),
          ),
        ),
      ),
    );

    return tabscreens;
  }

  String _getTabSnippet(int index) {
    switch (index) {
      case 1:
        return """
BreweryTabViewItem(
  tab: Container(
    child: Icon(Icons.archive),
  ),
  view: Container(
    child: Center(
      child: Text('Icon Only'),
    ),
  ),
);
""";

      case 2:
        return """
BreweryTabViewItem(
  tab: Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(Icons.camera),
        SizedBox(width: 8.0),
        Text('Tab 3'),
      ],
    ),
  ),
  view: Container(
    child: Center(
      child: Text('Text and Icon'),
    ),
  ),
);
""";

      case 3:
        return """
BreweryTabViewItem(
  tab: Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(Icons.phone_android),
        SizedBox(width: 8.0),
        Text('Fourth Tab with Long Title'),
      ],
    ),
  ),
  view: Container(
    child: Center(
      child: Text('Vertical Text and Icon'),
    ),
  ),
);
  """;

      default:
        return """
BreweryTabViewItem(
  tab: Text('Tab 1'),
  view: Container(
    child: Center(
      child: Text('Text Only'),
    ),
  ),
);
""";
    }
  }

  _afterLayout(_) {
    widget.onItemSelected(
      """
BreweryTabView(
  children: _buildChildren(),
  onTap: (index) {}
);
""",
    );
  }
}
