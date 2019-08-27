import 'package:flutter/material.dart';

class BreweryTabViewItem {
  BreweryTabViewItem(String title, Widget view) {
    this.title = title;
    this.view = view;
  }

  String title;
  Widget view;
}
