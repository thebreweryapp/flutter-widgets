import 'package:flutter/material.dart';

class BreweryTabViewItem {
  BreweryTabViewItem(Widget tab, Widget view) {
    this.tab = tab;
    this.view = view;
  }

  Widget tab;
  Widget view;
}
