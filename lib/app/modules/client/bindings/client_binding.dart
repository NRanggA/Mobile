import 'package:get/get.dart';

import 'package:latihan_appwrite/app/modules/client/controllers/_controller.dart';
import 'package:latihan_appwrite/app/modules/client/controllers/account.dart';

import '../controllers/client_controller.dart';

class ClientBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DatabaseController>(
      () => DatabaseController(),
    );
    Get.lazyPut<AccountController>(
      () => AccountController(),
    );
    Get.lazyPut<ClientController>(
      () => ClientController(),
    );
  }
}
