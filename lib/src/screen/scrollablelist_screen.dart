import 'package:flutter/widgets.dart';
import '../widgets/brewery_scrollablelist_with_header.dart';

class ScrollableListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScrollableListWithHeader(
      list: _getSampleItems(),
      boldFirstText: true,
    );
  }

  List<ListItemData> _getSampleItems() {
    ListItemData listItemData1 = ListItemData(
        'Aaron Jones', 'https://randomuser.me/api/portraits/men/3.jpg');
    ListItemData listItemData2 = ListItemData(
        'Amelia Kendrick', 'https://randomuser.me/api/portraits/women/65.jpg');
    ListItemData listItemData3 = ListItemData(
        'Anna Bennet', 'https://randomuser.me/api/portraits/women/60.jpg');
    ListItemData listItemData4 = ListItemData(
        'Ben Kowalski', 'https://randomuser.me/api/portraits/men/86.jpg');
    ListItemData listItemData5 = ListItemData(
        'Cindy Abrams', 'https://randomuser.me/api/portraits/women/49.jpg');
    ListItemData listItemData6 = ListItemData(
        'Chloe Loren', 'https://randomuser.me/api/portraits/women/72.jpg');
    ListItemData listItemData7 = ListItemData(
        'Darcel Bueno', 'https://randomuser.me/api/portraits/women/91.jpg');
    ListItemData listItemData8 = ListItemData(
        'Ellie Sondag', 'https://randomuser.me/api/portraits/women/33.jpg');
    ListItemData listItemData9 = ListItemData(
        'Elicia Klimas', 'https://randomuser.me/api/portraits/women/74.jpg');
    ListItemData listItemData10 = ListItemData(
        'Elyse Klimas', 'https://randomuser.me/api/portraits/women/22.jpg');
    ListItemData listItemData11 = ListItemData(
        'Filomena Marlett', 'https://randomuser.me/api/portraits/women/76.jpg');
    ListItemData listItemData12 = ListItemData(
        'Grace Yang', 'https://randomuser.me/api/portraits/women/13.jpg');
    ListItemData listItemData13 = ListItemData(
        'Gerald Ladnet', 'https://randomuser.me/api/portraits/men/60.jpg');
    ListItemData listItemData14 = ListItemData(
        'Hanna Ladner', 'https://randomuser.me/api/portraits/women/31.jpg');
    ListItemData listItemData15 = ListItemData(
        'Harold Rhymes', 'https://randomuser.me/api/portraits/men/64.jpg');
    ListItemData listItemData16 = ListItemData(
        'Irmgard Reeve', 'https://randomuser.me/api/portraits/women/17.jpg');
    ListItemData listItemData17 = ListItemData(
        'Isiah Plath', 'https://randomuser.me/api/portraits/men/51.jpg');

    List<ListItemData> list = [];
    list.add(listItemData1);
    list.add(listItemData2);
    list.add(listItemData3);
    list.add(listItemData4);
    list.add(listItemData5);
    list.add(listItemData6);
    list.add(listItemData7);
    list.add(listItemData8);
    list.add(listItemData9);
    list.add(listItemData10);
    list.add(listItemData11);
    list.add(listItemData12);
    list.add(listItemData13);
    list.add(listItemData14);
    list.add(listItemData15);
    list.add(listItemData16);
    list.add(listItemData17);

    return list;
  }
}
