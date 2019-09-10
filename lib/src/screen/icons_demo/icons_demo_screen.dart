import 'package:flutter/material.dart';

import '../../widgets/brewery_labeled_icon.dart';

class IconsDemoScreen extends StatelessWidget {
  final Function(String) onItemSelected;

  IconsDemoScreen({
    Key key,
    @required this.onItemSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 10.0,
        ),
        itemCount: _icons.length,
        itemBuilder: (contex, index) {
          return InkResponse(
            enableFeedback: true,
            child: GridTile(
              child: _icons[index],
            ),
            onTap: () {
              onItemSelected(_snippets[index]);
            },
          );
        },
      ),
    );
  }

  List<Widget> get _icons => [
        LabeledIcon(name: "star", iconData: Icons.star, color: Colors.yellow),
        LabeledIcon(name: "access_alarm", iconData: Icons.access_alarm),
        LabeledIcon(
          name: "accessibility",
          iconData: Icons.accessibility,
          color: Colors.black54,
        ),
        LabeledIcon(name: "accessible", iconData: Icons.accessible),
        LabeledIcon(
          name: "account_balance_wallet",
          iconData: Icons.account_balance_wallet,
          color: Colors.brown,
        ),
        LabeledIcon(name: "add", iconData: Icons.add, color: Colors.green),
        LabeledIcon(name: "add_a_photo", iconData: Icons.add_a_photo),
        LabeledIcon(
          name: "all_inclusive",
          iconData: Icons.all_inclusive,
          color: Colors.cyan,
        ),
        LabeledIcon(
          name: "apps",
          iconData: Icons.apps,
          color: Colors.red,
        ),
        LabeledIcon(
          name: "art_track",
          iconData: Icons.art_track,
        ),
        LabeledIcon(
          name: "assessment",
          iconData: Icons.assessment,
        ),
        LabeledIcon(
          name: "attach_file",
          iconData: Icons.attach_file,
          color: Colors.green,
        ),
        LabeledIcon(
          name: "backup",
          iconData: Icons.backup,
          color: Colors.blue,
        ),
        LabeledIcon(
          name: "battery_alert",
          iconData: Icons.battery_alert,
        ),
        LabeledIcon(
          name: "bluetooth",
          iconData: Icons.bluetooth,
          color: Colors.blue,
        ),
        LabeledIcon(
          name: "bug_report",
          iconData: Icons.bug_report,
          color: Colors.indigo,
        ),
        LabeledIcon(
          name: "build",
          iconData: Icons.build,
          color: Colors.grey,
        ),
        LabeledIcon(name: "business", iconData: Icons.business),
        LabeledIcon(
          name: "cached",
          iconData: Icons.cached,
          color: Colors.green,
        ),
        LabeledIcon(
          name: "cake",
          iconData: Icons.cake,
          color: Colors.pink,
        ),
        LabeledIcon(
          name: "calendar_today",
          iconData: Icons.calendar_today,
          color: Colors.red,
        ),
        LabeledIcon(
          name: "call",
          iconData: Icons.call,
          color: Colors.green,
        ),
        LabeledIcon(
          name: "call_end",
          iconData: Icons.call_end,
          color: Colors.red,
        ),
        LabeledIcon(
          name: "call_merge",
          iconData: Icons.call_merge,
          color: Colors.orange,
        ),
        LabeledIcon(
          name: "camera_alt",
          iconData: Icons.camera_alt,
          color: Colors.grey,
        ),
        LabeledIcon(
          name: "cancel",
          iconData: Icons.cancel,
          color: Colors.red,
        ),
        LabeledIcon(
          name: "card_travel",
          iconData: Icons.card_travel,
          color: Colors.brown,
        ),
        LabeledIcon(
          name: "chat",
          iconData: Icons.chat,
          color: Colors.lightBlue,
        ),
        LabeledIcon(
          name: "check_box",
          iconData: Icons.check_box,
          color: Colors.black,
        ),
        LabeledIcon(
          name: "cloud",
          iconData: Icons.cloud,
          color: Colors.grey,
        ),
        LabeledIcon(
          name: "computer",
          iconData: Icons.computer,
          color: Colors.black87,
        ),
        LabeledIcon(
          name: "credit_card",
          iconData: Icons.credit_card,
          color: Colors.orange,
        ),
        LabeledIcon(
          name: "delete",
          iconData: Icons.delete,
          color: Colors.grey,
        ),
        LabeledIcon(
          name: "directions_bus",
          iconData: Icons.directions_bus,
          color: Colors.yellow,
        ),
        LabeledIcon(
          name: "directions_run",
          iconData: Icons.directions_run,
        ),
        LabeledIcon(
          name: "directions_railway",
          iconData: Icons.directions_railway,
          color: Colors.blue,
        ),
        LabeledIcon(
          name: "favorite",
          iconData: Icons.favorite,
          color: Colors.pink,
        ),
        LabeledIcon(
          name: "filter_none",
          iconData: Icons.filter_none,
          color: Colors.grey,
        ),
        LabeledIcon(
          name: "fingerprint",
          iconData: Icons.fingerprint,
          color: Colors.deepOrange,
        ),
        LabeledIcon(
          name: "flag",
          iconData: Icons.flag,
          color: Colors.amber,
        ),
        LabeledIcon(
            name: "flash_on", iconData: Icons.flash_on, color: Colors.yellow),
        LabeledIcon(
            name: "folder", iconData: Icons.folder, color: Colors.brown),
        LabeledIcon(name: "format_size", iconData: Icons.format_size),
        LabeledIcon(
          name: "gps_fixed",
          iconData: Icons.format_size,
          color: Colors.black87,
        ),
        LabeledIcon(
          name: "group",
          iconData: Icons.group,
          color: Colors.blue,
        ),
        LabeledIcon(
          name: "history",
          iconData: Icons.history,
          color: Colors.orange,
        ),
        LabeledIcon(
          name: "insert_link",
          iconData: Icons.insert_link,
          color: Colors.grey,
        ),
        LabeledIcon(
          name: "keyboard",
          iconData: Icons.keyboard,
        ),
        LabeledIcon(
          name: "layers",
          iconData: Icons.layers,
          color: Colors.indigo,
        ),
        LabeledIcon(
          name: "link",
          iconData: Icons.link,
          color: Colors.grey,
        ),
        LabeledIcon(
          name: "local_hospital",
          iconData: Icons.local_hospital,
          color: Colors.red,
        ),
        LabeledIcon(
          name: "lock_outline",
          iconData: Icons.lock_outline,
          color: Colors.green,
        ),
        LabeledIcon(
          name: "lock_open",
          iconData: Icons.lock_open,
          color: Colors.yellow,
        ),
        LabeledIcon(
          name: "mail",
          iconData: Icons.mail,
          color: Colors.deepOrange,
        ),
        LabeledIcon(
          name: "memory",
          iconData: Icons.memory,
          color: Colors.green,
        ),
      ];

  List<dynamic> get _snippets => [
        """
LabeledIcon(
  name: "star",
  iconData: Icons.star,
  color: Colors.yellow,
);
""",
        """
  LabeledIcon(
    name: "access_alarm",
    iconData: Icons.access_alarm,
  );
""",
        """
  LabeledIcon(
    name: "accessibility",
    iconData: Icons.accessibility,
    color: Colors.black54,
  );
""",
        """
LabeledIcon(
  name: "accessible",
  iconData: Icons.accessible,
);
""",
        """
LabeledIcon(
  name: "account_balance_wallet",
  iconData: Icons.account_balance_wallet,
  color: Colors.brown,
);
""",
        """
LabeledIcon(
  name: "add",
  iconData: Icons.add,
  color: Colors.green,
);
""",
        """
LabeledIcon(
  name: "add_a_photo",
  iconData: Icons.add_a_photo,
);
""",
        """
LabeledIcon(
  name: "all_inclusive",
  iconData: Icons.all_inclusive,
  color: Colors.cyan,
);
""",
        """
LabeledIcon(
  name: "apps",
  iconData: Icons.apps,
  color: Colors.red,
);
""",
        """
LabeledIcon(
  name: "art_track",
  iconData: Icons.art_track,
);
""",
        """
LabeledIcon(
  name: "assessment",
  iconData: Icons.assessment,
);
""",
        """
LabeledIcon(
  name: "attach_file",
  iconData: Icons.attach_file,
  color: Colors.green,
);
""",
        """
LabeledIcon(
  name: "backup",
  iconData: Icons.backup,
  color: Colors.blue,
);
""",
        """
LabeledIcon(
  name: "battery_alert",
  iconData: Icons.battery_alert,
);
""",
        """
LabeledIcon(
  name: "bluetooth",
  iconData: Icons.bluetooth,
  color: Colors.blue,
);
""",
        """
LabeledIcon(
  name: "bug_report",
  iconData: Icons.bug_report,
  color: Colors.indigo,
);
""",
        """
LabeledIcon(
  name: "build",
  iconData: Icons.build,
  color: Colors.grey,
);
""",
        """
LabeledIcon(
  name: "business",
  iconData: Icons.business,
);
""",
        """
LabeledIcon(
  name: "cached",
  iconData: Icons.cached,
  color: Colors.green,
);
""",
        """
LabeledIcon(
  name: "cake",
  iconData: Icons.cake,
  color: Colors.pink,
);
""",
        """
LabeledIcon(
  name: "calendar_today",
  iconData: Icons.calendar_today,
  color: Colors.red,
);
""",
        """
LabeledIcon(
  name: "call",
  iconData: Icons.call,
  color: Colors.green,
);
""",
        """
LabeledIcon(
  name: "call_end",
  iconData: Icons.call_end,
  color: Colors.red,
);
""",
        """
LabeledIcon(
  name: "call_merge",
  iconData: Icons.call_merge,
  color: Colors.orange,
);
""",
        """
LabeledIcon(
  name: "camera_alt",
  iconData: Icons.camera_alt,
  color: Colors.grey,
);
""",
        """
LabeledIcon(
  name: "cancel",
  iconData: Icons.cancel,
  color: Colors.red,
);
""",
        """
LabeledIcon(
  name: "card_travel",
  iconData: Icons.card_travel,
  color: Colors.brown,
);
""",
        """
LabeledIcon(
  name: "chat",
  iconData: Icons.chat,
  color: Colors.lightBlue,
);
""",
        """
LabeledIcon(
  name: "check_box",
  iconData: Icons.check_box,
  color: Colors.black,
);
""",
        """
LabeledIcon(
  name: "cloud",
  iconData: Icons.cloud,
  color: Colors.grey,
);
""",
        """
LabeledIcon(
  name: "computer",
  iconData: Icons.computer,
  color: Colors.black87,
);
""",
        """
LabeledIcon(
  name: "credit_card",
  iconData: Icons.credit_card,
  color: Colors.orange,
);
""",
        """
LabeledIcon(
  name: "delete",
  iconData: Icons.delete,
  color: Colors.grey,
);
""",
        """
LabeledIcon(
  name: "directions_bus",
  iconData: Icons.directions_bus,
  color: Colors.yellow,
);
""",
        """
LabeledIcon(
  name: "directions_run",
  iconData: Icons.directions_run,
);
""",
        """
LabeledIcon(
  name: "directions_railway",
  iconData: Icons.directions_railway,
  color: Colors.blue,
);
""",
        """
LabeledIcon(
  name: "favorite",
  iconData: Icons.favorite,
  color: Colors.pink,
);
""",
        """
LabeledIcon(
  name: "filter_none",
  iconData: Icons.filter_none,
  color: Colors.grey,
);
""",
        """
LabeledIcon(
  name: "fingerprint",
  iconData: Icons.fingerprint,
  color: Colors.deepOrange,
);
""",
        """
LabeledIcon(
  name: "flag",
  iconData: Icons.flag,
  color: Colors.amber,
);
""",
        """
LabeledIcon(
  name: "flash_on",
  iconData: Icons.flash_on,
  color: Colors.yellow,
);
""",
        """
LabeledIcon(
  name: "folder",
  iconData: Icons.folder,
  color: Colors.brown,
);
""",
        """
LabeledIcon(
  name: "format_size",
  iconData: Icons.format_size,
);
""",
        """
LabeledIcon(
  name: "gps_fixed",
  iconData: Icons.format_size,
  color: Colors.black87,
);
""",
        """
LabeledIcon(
  name: "group",
  iconData: Icons.group,
  color: Colors.blue,
);
""",
        """
LabeledIcon(
  name: "history",
  iconData: Icons.history,
  color: Colors.orange,
);
""",
        """
LabeledIcon(
  name: "insert_link",
  iconData: Icons.insert_link,
  color: Colors.grey,
);
""",
        """
LabeledIcon(
  name: "keyboard",
  iconData: Icons.keyboard,
);
""",
        """
LabeledIcon(
  name: "layers",
  iconData: Icons.layers,
  color: Colors.indigo,
);
""",
        """
LabeledIcon(
  name: "link",
  iconData: Icons.link,
  color: Colors.grey,
);
""",
        """
LabeledIcon(
  name: "local_hospital",
  iconData: Icons.local_hospital,
  color: Colors.red,
);
""",
        """
LabeledIcon(
  name: "lock_outline",
  iconData: Icons.lock_outline,
  color: Colors.green,
);
""",
        """
LabeledIcon(
  name: "lock_open",
  iconData: Icons.lock_open,
  color: Colors.yellow,
);
""",
        """
LabeledIcon(
  name: "mail",
  iconData: Icons.mail,
  color: Colors.deepOrange,
);
""",
        """
LabeledIcon(
  name: "memory",
  iconData: Icons.memory,
  color: Colors.green,
);
""",
      ];
}
