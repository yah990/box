import 'package:flutter/material.dart';

extension SizeX on double {
  double w(context) => this * MediaQuery.of(context).size.width / 100;
  double h(context) => this * MediaQuery.of(context).size.height / 100;
}
