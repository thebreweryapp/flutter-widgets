import 'package:flutter/material.dart';

import '../../widgets/brewery_searchbar.dart';

class SearchDemoScreen extends StatefulWidget {
  final Function(String) onItemSelected;

  SearchDemoScreen({
    Key key,
    @required this.onItemSelected,
  }) : super(key: key);

  @override
  State<SearchDemoScreen> createState() => _SearchDemoScreenState();
}

class _SearchDemoScreenState extends State<SearchDemoScreen> {
  final tint = Color.fromRGBO(249, 204, 65, 1);

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback(_afterLayout);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BrewerySearchBar(
        backgroundColor: Colors.black,
        actionsIconTheme: IconThemeData(color: tint),
        iconTheme: IconThemeData(color: tint),
        textTheme: TextTheme(
          title: TextStyle(
            color: tint,
            fontSize: 20.0,
          ),
        ),
        cursorColor: tint,
        hintText: 'Search',
        onEditingComplete: _onEditingComplete,
        onSubmitted: _onSubmitted,
        onTextChanged: _onTextChanged,
        onClear: _onClear,
      ),
    );
  }

  _onEditingComplete() {
    print('onEditingComplete');
  }

  _onSubmitted(String text) {
    print('onSubmitted: $text');
  }

  _onTextChanged(String text) {
    print('onTextChanged: $text');
  }

  _onClear() {
    print('onClear');
  }

  _afterLayout(_) {
    widget.onItemSelected(
      """
BrewerySearchBar(
  backgroundColor: Colors.black,
  actionsIconTheme: IconThemeData(color: tint),
  iconTheme: IconThemeData(color: tint),
  textTheme: TextTheme(
    title: TextStyle(
      color: tint,
      fontSize: 20.0,
    ),
  ),
  cursorColor: tint,
  hintText: 'Search',
  onEditingComplete: _onEditingComplete,
  onSubmitted: _onSubmitted,
  onTextChanged: _onTextChanged,
  onClear: _onClear,
);
""",
    );
  }
}
