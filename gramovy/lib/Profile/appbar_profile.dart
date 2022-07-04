import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar (
    backgroundColor: Colors.transparent,
    leading: BackButton(
      color: Colors.black,
    ),
    elevation: 0,
  );
} 