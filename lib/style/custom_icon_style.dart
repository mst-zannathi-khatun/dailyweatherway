import 'package:flutter/material.dart';
import 'custom_color.dart';

class CustomButtonIcons {
  // Icon style for the "More" button in the weather header on the home screen
  static Icon weatherHeaderMoreVert = const Icon(
    Icons.more_vert,
    size: 24,
    color: Colors.black54,
  );

  // Icon style for the "Add" button in the weather header on the home screen
  static Icon weatherHeaderAddBox = const Icon(
    Icons.add_box,
    size: 24,
    color: Colors.black54,
  );
}

class CustomIcons {
  CustomIcons._();

  // Icon style for the location marker in the weather overview on the home screen
  static Icon location = Icon(
    Icons.location_on,
    size: 24,
    color: CustomColor.lightGrey,
  );

  // Icon style for the cloud icon in the weather overview on the home screen
  static Icon cloud = Icon(
    Icons.cloud_rounded,
    size: 40,
    color: CustomColor.deepSkyBlue,
  );
}
