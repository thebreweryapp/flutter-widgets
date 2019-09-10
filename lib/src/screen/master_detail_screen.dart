import 'package:flutter/material.dart';

class MasterDetailScreen extends StatefulWidget {
  final Widget master;
  final Widget detail;
  final Function(Orientation) onOrientationChanged;

  MasterDetailScreen({
    Key key,
    @required this.master,
    this.detail,
    this.onOrientationChanged,
  })  : assert(master != null),
        super(key: key);

  @override
  State<MasterDetailScreen> createState() => _MasterDetailScreenState();
}

class _MasterDetailScreenState extends State<MasterDetailScreen> {
  @override
  Widget build(BuildContext context) {
    bool hasDetail = widget.detail != null;

    return OrientationBuilder(
      builder: (context, orientation) {
        bool isLargeScreen = MediaQuery.of(context).size.width > 600.0;

        return Row(
          children: <Widget>[
            Expanded(child: widget.master),
            if (isLargeScreen && hasDetail) Expanded(child: widget.detail),
          ],
        );
      },
    );
  }
}
