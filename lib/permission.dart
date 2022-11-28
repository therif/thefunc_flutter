library thefunc_thepermisiion;

import 'package:flutter/foundation.dart';
import 'package:permission_handler/permission_handler.dart';

enum ListPermission { storage, camera, internet, wakelock, reboot, autostart }

class ThePermission {
  void requestPermission(String permissionName) {
    setPermNya(ListPermission.values.byName(permissionName));
  }

  Future setPermNya(ListPermission ident) async {
    if (defaultTargetPlatform == TargetPlatform.android) {
      PermissionStatus statusPerm;

      switch (ident.name.toLowerCase()) {
        case 'storage':
          statusPerm = await Permission.storage.status;
          if (statusPerm.isDenied ||
              statusPerm.isPermanentlyDenied ||
              statusPerm.isRestricted) {
            statusPerm = await Permission.storage.request();
          }
          break;
        case 'camera':
          statusPerm = await Permission.camera.status;
          if (statusPerm.isDenied ||
              statusPerm.isPermanentlyDenied ||
              statusPerm.isRestricted) {
            statusPerm = await Permission.camera.request();
          }
          break;

        // bukaPermission:
        // case 'cat':
        //   print("it's a cat");
        //   break;

      }
    }
  }
}
