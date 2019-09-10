import 'package:flutter/material.dart';

class SectionedListView extends StatefulWidget {
  final List<ListItemData> items;
  final bool boldFirstText;

  SectionedListView({
    @required this.items,
    this.boldFirstText = true,
  });

  @override
  State<StatefulWidget> createState() => _SectionedListViewState();
}

class _SectionedListViewState extends State<SectionedListView> {
  List<ListItemData> _list = [];
  List<dynamic> _directoryList = [];

  @override
  void initState() {
    super.initState();
    _list = widget.items;
  }

  @override
  Widget build(BuildContext context) {
    prepSections();
    return ListView.separated(
      physics: ClampingScrollPhysics(),
      separatorBuilder: (context, index) => Container(
        color: Color.fromRGBO(0, 0, 0, 0.1),
        height: 1.0,
        width: MediaQuery.of(context).size.width,
      ),
      itemCount: _directoryList.length,
      itemBuilder: (context, index) {
        if (_directoryList[index] is ListViewItem) {
          var name = RichText(
            text: TextSpan(
              // Note: Styles for TextSpans must be explicitly defined.
              // Child text spans will inheri t styles from parent
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.black,
              ),
              children: <TextSpan>[
                TextSpan(
                  text:
                      '${extractBeforeSpace(_directoryList[index].listItemData.name)}',
                  style: widget.boldFirstText
                      ? TextStyle(fontWeight: FontWeight.bold)
                      : TextStyle(fontWeight: FontWeight.normal),
                ),
                TextSpan(
                  text: extractAfterSpace(
                    _directoryList[index].listItemData.name,
                  ),
                ),
              ],
            ),
          );
          return ListTile(
            title: name,
            contentPadding: EdgeInsets.only(
              top: 10.0,
              bottom: 10.0,
              left: 15.0,
              right: 10.0,
            ),
            leading: CircleAvatar(
              child: _directoryList[index].listItemData.imageUrl != null
                  ? ClipOval(
                      child: Image.network(
                          _directoryList[index].listItemData.imageUrl),
                    )
                  : Text(
                      '${extractBeforeSpace(_directoryList[index].listItemData.name).substring(0, 1).toUpperCase()}'
                      '${extractAfterSpace(_directoryList[index].listItemData.name).substring(0, 1).toUpperCase()}'),
            ),
          );
        } else {
          return Container(
            color: Colors.grey[200],
            padding: EdgeInsets.all(15.0),
            child: Text(
              _directoryList[index].header,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          );
        }
      },
    );
  }

  prepSections() {
    List<String> sections = [];
    _directoryList.clear();
    _list.sort((a, b) => a.name.compareTo(b.name));
    _list.forEach((item) {
      String firstChar = item.name.substring(0, 1);
      if (sections != null && sections.length > 0) {
        String sec = sections[sections.length - 1];
        if (sec == firstChar) {
          _directoryList.add(ListViewItem(item));
        } else {
          sections.add(firstChar);
          _directoryList.add(ListViewHeader(firstChar));
          _directoryList.add(ListViewItem(item));
        }
      } else {
        sections.add(firstChar);
        _directoryList.add(ListViewHeader(firstChar));
        _directoryList.add(ListViewItem(item));
      }
    });
  }

  String extractBeforeSpace(String text) {
    List<String> textBeforeString = text.split(" ");
    return textBeforeString[0] + " ";
  }

  String extractAfterSpace(String text) {
    List<String> textAfterString = text.split(" ");

    String textCreated = "";
    for (int i = 1; i < textAfterString.length; i++) {
      textCreated += textAfterString[i] + " ";
    }

    return textCreated;
  }
}

class ListViewItem {
  final ListItemData listItemData;

  ListViewItem(this.listItemData);
}

class ListViewHeader {
  final String header;

  ListViewHeader(this.header);
}

class ListItemData {
  String name;
  String imageUrl;

  ListItemData(this.name, this.imageUrl);
}
