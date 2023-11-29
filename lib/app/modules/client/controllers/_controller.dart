import 'package:appwrite/appwrite.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_appwrite/app/modules/client/controllers/client_controller.dart';

class DatabaseController extends ClientController {
  //TODO: Implement Controller

  Databases? databases;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    databases = Databases(client);
  }

  Future storeUserName(Map map) async {
    try {
      // ignore: unused_local_variable
      final result = await databases!.createDocument(
        databaseId: "6566b8052d448478aebf",
        documentId: ID.unique(),
        collectionId: "6566b9f749374c5343b6",
        data: map,
        permissions: [
          Permission.read(Role.user("6566bcdb5750a185330b")),
          Permission.update(Role.user("6566bcdb5750a185330b")),
          Permission.delete(Role.user("6566bcdb5750a185330b")),
        ],
      );
      print("DatabaseController:: storeUserName $databases");
    } catch (error) {
      Get.defaultDialog(
        title: "Error Database",
        titlePadding: const EdgeInsets.only(top: 15, bottom: 5),
        titleStyle: Get.context?.theme.textTheme.titleLarge,
        content: Text(
          "$error",
          style: Get.context?.theme.textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
        contentPadding: const EdgeInsets.only(top: 5, left: 15, right: 15),
      );
    }
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
