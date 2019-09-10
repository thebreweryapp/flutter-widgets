import 'package:flutter/material.dart';

import '../../widgets/profile.dart';
import '../../widgets/single_line_item.dart';

class ProfileDemoScreen extends StatefulWidget {
  final Function(String) onItemSelected;

  ProfileDemoScreen({
    Key key,
    @required this.onItemSelected,
  }) : super(key: key);

  @override
  State<ProfileDemoScreen> createState() => _ProfileDemoScreenState();
}

class _ProfileDemoScreenState extends State<ProfileDemoScreen> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback(_afterLayout);
  }

  @override
  Widget build(BuildContext context) {
    var items = <SingleLineItemData>[];
    items.add(SingleLineItemData(title: "Street Address 145, City Name"));
    items.add(SingleLineItemData(title: "+63 123 456 7890"));
    items.add(SingleLineItemData(title: "contact@example.com"));

    return GestureDetector(
      child: Profile(
        name: "John Doe",
        email: "sample@example.com",
        items: items,
      ),
    );
  }

  _afterLayout(_) {
    widget.onItemSelected(
      """
Profile(
  name: "John Doe",
  email: "sample@example.com",
  items: items,
);
""",
    );
  }
}
