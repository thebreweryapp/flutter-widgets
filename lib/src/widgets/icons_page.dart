import 'package:brewery_flutter_widget/src/widgets/brewery_labeled_icon.dart';
import 'package:flutter/material.dart';

class IconsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisSpacing: 10.0,
      crossAxisCount: 4,
      children: <Widget>[
        LabeledIconWidget(
            name: "star", iconData: Icons.star, materialColor: Colors.yellow),
        LabeledIconWidget(name: "access_alarm", iconData: Icons.access_alarm),
        LabeledIconWidget(
          name: "accessibility",
          iconData: Icons.accessibility,
          materialColor: Colors.black54,
        ),
        LabeledIconWidget(name: "accessible", iconData: Icons.accessible),
        LabeledIconWidget(
          name: "account_balance_wallet",
          iconData: Icons.account_balance_wallet,
          materialColor: Colors.brown,
        ),
        LabeledIconWidget(
            name: "add", iconData: Icons.add, materialColor: Colors.green),
        LabeledIconWidget(name: "add_a_photo", iconData: Icons.add_a_photo),
        LabeledIconWidget(
          name: "all_inclusive",
          iconData: Icons.all_inclusive,
          materialColor: Colors.cyan,
        ),
        LabeledIconWidget(
          name: "apps",
          iconData: Icons.apps,
          materialColor: Colors.red,
        ),
        LabeledIconWidget(
          name: "art_track",
          iconData: Icons.art_track,
        ),
        LabeledIconWidget(
          name: "assessment",
          iconData: Icons.assessment,
        ),
        LabeledIconWidget(
          name: "attach_file",
          iconData: Icons.attach_file,
          materialColor: Colors.green,
        ),
        LabeledIconWidget(
          name: "backup",
          iconData: Icons.backup,
          materialColor: Colors.blue,
        ),
        LabeledIconWidget(
          name: "battery_alert",
          iconData: Icons.battery_alert,
        ),
        LabeledIconWidget(
          name: "bluetooth",
          iconData: Icons.bluetooth,
          materialColor: Colors.blue,
        ),
        LabeledIconWidget(
          name: "bug_report",
          iconData: Icons.bug_report,
          materialColor: Colors.indigo,
        ),
        LabeledIconWidget(
          name: "build",
          iconData: Icons.build,
          materialColor: Colors.grey,
        ),
        LabeledIconWidget(name: "business", iconData: Icons.business),
        LabeledIconWidget(
          name: "cached",
          iconData: Icons.cached,
          materialColor: Colors.green,
        ),
        LabeledIconWidget(
          name: "cake",
          iconData: Icons.cake,
          materialColor: Colors.pink,
        ),
        LabeledIconWidget(
          name: "calendar_today",
          iconData: Icons.calendar_today,
          materialColor: Colors.red,
        ),
        LabeledIconWidget(
          name: "call",
          iconData: Icons.call,
          materialColor: Colors.green,
        ),
        LabeledIconWidget(
          name: "call_end",
          iconData: Icons.call_end,
          materialColor: Colors.red,
        ),
        LabeledIconWidget(
          name: "call_merge",
          iconData: Icons.call_merge,
          materialColor: Colors.orange,
        ),
        LabeledIconWidget(
          name: "camera_alt",
          iconData: Icons.camera_alt,
          materialColor: Colors.grey,
        ),
        LabeledIconWidget(
          name: "cancel",
          iconData: Icons.cancel,
          materialColor: Colors.red,
        ),
        LabeledIconWidget(
          name: "card_travel",
          iconData: Icons.card_travel,
          materialColor: Colors.brown,
        ),
        LabeledIconWidget(
          name: "chat",
          iconData: Icons.chat,
          materialColor: Colors.lightBlue,
        ),
        LabeledIconWidget(
          name: "check_box",
          iconData: Icons.check_box,
          materialColor: Colors.black,
        ),
        LabeledIconWidget(
          name: "cloud",
          iconData: Icons.cloud,
          materialColor: Colors.grey,
        ),
        LabeledIconWidget(
          name: "computer",
          iconData: Icons.computer,
          materialColor: Colors.black87,
        ),
        LabeledIconWidget(
          name: "credit_card",
          iconData: Icons.credit_card,
          materialColor: Colors.orange,
        ),
        LabeledIconWidget(
          name: "delete",
          iconData: Icons.delete,
          materialColor: Colors.grey,
        ),
        LabeledIconWidget(
          name: "directions_bus",
          iconData: Icons.directions_bus,
          materialColor: Colors.yellow,
        ),
        LabeledIconWidget(
          name: "directions_run",
          iconData: Icons.directions_run,
        ),
        LabeledIconWidget(
          name: "directions_railway",
          iconData: Icons.directions_railway,
          materialColor: Colors.blue,
        ),
        LabeledIconWidget(
          name: "favorite",
          iconData: Icons.favorite,
          materialColor: Colors.pink,
        ),
        LabeledIconWidget(
          name: "filter_none",
          iconData: Icons.filter_none,
          materialColor: Colors.grey,
        ),
        LabeledIconWidget(
          name: "fingerprint",
          iconData: Icons.fingerprint,
          materialColor: Colors.deepOrange,
        ),
        LabeledIconWidget(
          name: "flag",
          iconData: Icons.flag,
          materialColor: Colors.amber,
        ),
        Icon(
          Icons.flash_on,
          color: Colors.yellow,
        ),
        Icon(
          Icons.folder,
          color: Colors.brown,
        ),
        Icon(
          Icons.format_size,
        ),
        Icon(
          Icons.gps_fixed,
          color: Colors.black87,
        ),
        Icon(
          Icons.group,
          color: Colors.blue,
        ),
        Icon(
          Icons.history,
          color: Colors.orange,
        ),
        Icon(
          Icons.insert_link,
          color: Colors.grey,
        ),
        Icon(
          Icons.keyboard,
        ),
        Icon(
          Icons.layers,
          color: Colors.indigo,
        ),
        Icon(
          Icons.link,
          color: Colors.grey,
        ),
        Icon(
          Icons.local_hospital,
          color: Colors.red,
        ),
        Icon(
          Icons.lock_outline,
          color: Colors.green,
        ),
        Icon(
          Icons.lock_open,
          color: Colors.yellow,
        ),
        Icon(
          Icons.mail,
          color: Colors.deepOrange,
        ),
        Icon(
          Icons.memory,
          color: Colors.green,
        ),
      ],
    );
  }
}
