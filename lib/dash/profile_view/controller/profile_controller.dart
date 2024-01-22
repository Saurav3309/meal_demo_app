import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';


class ProfileController extends GetxController {
  var profileOptions = <dynamic>[
    {const Icon(Icons.contact_support,), 'Contact Us'},
    {const Icon(Icons.share_sharp), 'Tell a Friend'},
    {const Icon(Icons.device_unknown,), 'Landscape Left'},
    {const Icon(Icons.privacy_tip_outlined,), 'Landscape Left'},
    {const Icon(Icons.edit_document,), 'Portrait Down'},
    {const Icon(Icons.star_rate_outlined,), 'Portrait Up'},
  ].obs;


  void onProfileOptionsTap(int index) {
    switch (index) {
      case 2:
        {
          SystemChrome.setPreferredOrientations([    DeviceOrientation.landscapeLeft,
          ]);
        }
        break; case 3:
        {
          SystemChrome.setPreferredOrientations([    DeviceOrientation.landscapeLeft,
          ]);
        }
        break;
      case 4:
        {
          SystemChrome.setPreferredOrientations([    DeviceOrientation.portraitDown,
          ]);
        }
        break;
      case 5:
        {
          SystemChrome.setPreferredOrientations([    DeviceOrientation.portraitUp,
          ]);
        }
        break;
    }
  }


}