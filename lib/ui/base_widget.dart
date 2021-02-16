import 'package:flutter/material.dart';
import 'package:localisation/ui/sizing_information.dart';

class BaseWidget extends StatefulWidget {
  final Function(BuildContext context, SizingInformation sizingInformation)builder;
  const BaseWidget({Key key, this.builder}): super(key:key);
  @override
  _BaseWidgetState createState() => _BaseWidgetState();
}

class _BaseWidgetState extends State<BaseWidget> {
  @override
  Widget build(BuildContext context) {
    var sizingInformation=SizingInformation();
    return builder(context, sizingInformation);
  }
}