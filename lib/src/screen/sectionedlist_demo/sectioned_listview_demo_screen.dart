import 'package:flutter/widgets.dart';
import '../../widgets/brewery_sectioned_listview.dart';

class SectionedListViewDemoScreen extends StatefulWidget {
  final Function(String) onItemSelected;

  SectionedListViewDemoScreen({
    Key key,
    @required this.onItemSelected,
  }) : super(key: key);

  @override
  State<SectionedListViewDemoScreen> createState() =>
      _SectionedListViewDemoScreenState();
}

class _SectionedListViewDemoScreenState
    extends State<SectionedListViewDemoScreen> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback(_afterLayout);
  }

  @override
  Widget build(BuildContext context) {
    return SectionedListView(items: _demoItems);
  }

  List<ListItemData> get _demoItems => [
        ListItemData(
            'Aaron Jones', 'https://randomuser.me/api/portraits/men/3.jpg'),
        ListItemData('Amelia Kendrick',
            'https://randomuser.me/api/portraits/women/65.jpg'),
        ListItemData(
            'Anna Bennet', 'https://randomuser.me/api/portraits/women/60.jpg'),
        ListItemData(
            'Ben Kowalski', 'https://randomuser.me/api/portraits/men/86.jpg'),
        ListItemData(
            'Cindy Abrams', 'https://randomuser.me/api/portraits/women/49.jpg'),
        ListItemData(
            'Chloe Loren', 'https://randomuser.me/api/portraits/women/72.jpg'),
        ListItemData(
            'Darcel Bueno', 'https://randomuser.me/api/portraits/women/91.jpg'),
        ListItemData(
            'Ellie Sondag', 'https://randomuser.me/api/portraits/women/33.jpg'),
        ListItemData('Elicia Klimas',
            'https://randomuser.me/api/portraits/women/74.jpg'),
        ListItemData(
            'Elyse Klimas', 'https://randomuser.me/api/portraits/women/22.jpg'),
        ListItemData('Filomena Marlett',
            'https://randomuser.me/api/portraits/women/76.jpg'),
        ListItemData(
            'Grace Yang', 'https://randomuser.me/api/portraits/women/13.jpg'),
        ListItemData(
            'Gerald Ladnet', 'https://randomuser.me/api/portraits/men/60.jpg'),
        ListItemData(
            'Hanna Ladner', 'https://randomuser.me/api/portraits/women/31.jpg'),
        ListItemData(
            'Harold Rhymes', 'https://randomuser.me/api/portraits/men/64.jpg'),
        ListItemData('Irmgard Reeve',
            'https://randomuser.me/api/portraits/women/17.jpg'),
        ListItemData(
            'Isiah Plath', 'https://randomuser.me/api/portraits/men/51.jpg'),
      ];

  _afterLayout(_) {
    widget.onItemSelected(
      """
SectionedListView(items: _demoItems);
""",
    );
  }
}
