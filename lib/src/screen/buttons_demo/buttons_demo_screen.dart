import 'package:flutter/material.dart';

import '../../widgets/primary_button.dart';
import '../../widgets/secondary_button.dart';

class ButtonsDemoScreen extends StatefulWidget {
  final Function(String) onItemSelected;

  ButtonsDemoScreen({this.onItemSelected});

  @override
  State<StatefulWidget> createState() => _ButtonsDemoScreen();
}

class _ButtonsDemoScreen extends State<ButtonsDemoScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
        return ListTile(
          title: _createItem(index),
          onTap: () {
            widget.onItemSelected(_getCodeSnippet(index));
          },
        );
      },
    );
  }

  Widget _createItem(int index) {
    switch (index) {
      case 1:
        return Column(
          children: <Widget>[
            Text('Disabled Primary'),
            PrimaryButton(
              onPressed: () {},
              text: 'Brewery Button',
              disabled: true,
            ),
          ],
        );

      case 2:
        return Column(
          children: <Widget>[
            Text('Secondary'),
            SecondaryButton(
              onPressed: () {},
              text: 'Brewery Button',
              disabled: true,
            ),
          ],
        );

      case 3:
        return Column(
          children: <Widget>[
            Text('Disabled Secondary'),
            SecondaryButton(
              onPressed: () {},
              text: 'Brewery Button',
              disabled: true,
            ),
          ],
        );

      default:
        return Column(
          children: <Widget>[
            Text('Primary'),
            SecondaryButton(
              onPressed: () {},
              text: 'Brewery Button',
            ),
          ],
        );
    }
  }

  String _getCodeSnippet(int index) {
    switch (index) {
      case 1:
        return """
PrimaryButton(
  onPressed: () {},
  text: 'Brewery Button',
  disabled: true,
);
        """;

      case 2:
        return """
SecondaryButton(
  onPressed: () {},
  text: 'Brewery Button',
);
""";

      case 3:
        return """
SecondaryButton(
  onPressed: () {},
  text: 'Brewery Button',
  disabled: true,
);
""";

      default:
        return """
PrimaryButton(
  onPressed: () {},
  text: 'Brewery Button',
);
""";
    }
  }
}
