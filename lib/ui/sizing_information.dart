import 'package:flutter/cupertino.dart';
import 'package:localisation/enum/device_screen.dart';

class SizingInformation{
  final Orientation orientation;
  final DeviceScreenType deviceScreenType;
  final Size sizeScreen;

  SizingInformation({
  this.deviceScreenType,
  this.orientation,
  this.sizeScreen
});

@override
String toString() {
    // TODO: implement toString
    return super.toString();
  }
}

