import 'package:brewery_flutter_widget/src/widgets/single_line_item.dart';
import 'package:flutter/material.dart';
import '../widgets/profile.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var singleItemDataList = <SingleLineItemData>[];
    singleItemDataList
        .add(SingleLineItemData(title: "Street Address 145, City Name"));
    singleItemDataList.add(SingleLineItemData(title: "+63 123 456 7890"));
    singleItemDataList.add(SingleLineItemData(title: "contact@example.com"));

    return Container(
      child: Profile(
        name: "John Doe",
        email: "sample@example.com",
        singleLineItemDataList: singleItemDataList,
      ),
    );
  }
}
