import 'package:appwrite/appwrite.dart';
import 'package:get/get.dart';

class ClientController extends GetxController {
  //TODO: Implement ClientController
  Client client = Client();

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    const endPoint = "https://cloud.appwrite.io/v1";
    const projectID = "65669f9930521b26bc71";
    client
        .setEndpoint(endPoint)
        .setProject(projectID)
        .setSelfSigned(status: true);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
