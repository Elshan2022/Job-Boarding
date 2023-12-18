// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

enum CacheKeys { userId }

abstract class ICacheManager {
  Future<bool> saveUserId(String? id);
  Future<String> getUserId();
  Future<bool> deleteUserId();

  final FlutterSecureStorage storage;
  ICacheManager({required this.storage});
}

class CacheManager extends ICacheManager {
  CacheManager({required super.storage});

  @override
  Future<bool> deleteUserId() async {
    await storage.delete(key: CacheKeys.userId.name);
    return true;
  }

  @override
  Future<String> getUserId() async {
    final userId = await storage.read(key: CacheKeys.userId.name);
    return userId!;
  }

  @override
  Future<bool> saveUserId(String? id) async {
    if (id != null) {
      await storage.write(key: CacheKeys.userId.name, value: id);
    }
    return true;
  }
}
