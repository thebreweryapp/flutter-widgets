import 'package:flutter/material.dart';

class ScrollableListWithHeader extends StatefulWidget {
  final List<ListItemData> list;
  final bool boldFirstText;

  ScrollableListWithHeader({this.list, this.boldFirstText});

  @override
  State<StatefulWidget> createState() {
    return _ScrollableListWithHeaderState(boldFirstText);
  }
}

class _ScrollableListWithHeaderState extends State<ScrollableListWithHeader> {
  bool boldFirstText = true;
  List<ListItemData> _list = [];
  List<dynamic> directoryList = [];

  _ScrollableListWithHeaderState(boldFirstText) {
    this.boldFirstText = boldFirstText;
  }

  @override
  void initState() {
    super.initState();
    _list = widget.list;
  }

  @override
  Widget build(BuildContext context) {
    prepSections();
    return ListView.separated(
        separatorBuilder: (context, index) => Container(
              color: Color.fromRGBO(0, 0, 0, 0.1),
              height: 1.0,
              width: MediaQuery.of(context).size.width,
            ),
        itemCount: directoryList.length,
        itemBuilder: (context, index) {
          if (directoryList[index] is ListViewItem) {
            var name = new RichText(
              text: new TextSpan(
                // Note: Styles for TextSpans must be explicitly defined.
                // Child text spans will inherit styles from parent
                style: new TextStyle(
                  fontSize: 14.0,
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  new TextSpan(
                      text:
                          '${extractBeforeSpace(directoryList[index].listItemData.name)}',
                      style: boldFirstText
                          ? TextStyle(fontWeight: FontWeight.bold)
                          : TextStyle(fontWeight: FontWeight.normal)),
                  new TextSpan(
                    text: extractAfterSpace(
                        directoryList[index].listItemData.name),
                  ),
                ],
              ),
            );
            return ListTile(
              title: name,
              contentPadding: EdgeInsets.only(
                  top: 10.0, bottom: 10.0, left: 15.0, right: 10.0),
              leading: CircleAvatar(
                child: directoryList[index].listItemData.imageUrl != null
                    ? ClipOval(
                        child: Image.network(
                            directoryList[index].listItemData.imageUrl),
                      )
                    : Text(
                        '${extractBeforeSpace(directoryList[index].listItemData.name).substring(0, 1).toUpperCase()}'
                        '${extractAfterSpace(directoryList[index].listItemData.name).substring(0, 1).toUpperCase()}'),
              ),
            );
          } else {
            return Container(
              color: Color.fromRGBO(225, 225, 225, 1),
              padding: EdgeInsets.all(15.0),
              child: Text(
                directoryList[index].header,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            );
          }
        });
  }

  prepSections() {
    List<String> sections = [];
    directoryList.clear();
    _list.sort((a, b) => a.name.compareTo(b.name));
    _list.forEach((item) {
      print('${item.name}');
      String firstChar = item.name.substring(0, 1);
      if (sections != null && sections.length > 0) {
        String sec = sections[sections.length - 1];
        if (sec == firstChar) {
          directoryList.add(ListViewItem(item));
        } else {
          sections.add(firstChar);
          directoryList.add(ListViewHeader(firstChar));
          directoryList.add(ListViewItem(item));
        }
      } else {
        sections.add(firstChar);
        directoryList.add(ListViewHeader(firstChar));
        directoryList.add(ListViewItem(item));
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
