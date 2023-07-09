import 'package:flutter/material.dart';

navigator(context, screen) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => screen));
}
