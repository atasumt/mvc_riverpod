import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_mvc/core/helper/logger.dart';

class Settings {
  String token = "";

// ? call FlutterSecureStorage with [storage] object for static options.
  final storage = const FlutterSecureStorage(
      aOptions: AndroidOptions(encryptedSharedPreferences: true));

  Settings._privateConstructor();

  static final Settings _instance = Settings._privateConstructor();

  factory Settings() {
    return _instance;
  }

  Future<void> onInit() async {
    // ! should be at top
    await initStorage();
  }

  Future<void> initStorage() async {
    token = await storage.read(key: "token") ?? "";

    logger().d("Token: ${await storage.read(key: "token")}");
  }

  Future<String> get getToken async {
    token = await storage.read(key: "token") ?? "";
    return token;
  }
}
