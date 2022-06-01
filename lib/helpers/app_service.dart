import 'package:ferry/ferry.dart';
import 'package:flutter_bookstore/graphql/client.dart';
import 'package:flutter_bookstore/helpers/secure_storage.dart';
import 'package:singleton/singleton.dart';

class AppService {
  factory AppService() => Singleton<AppService>().instance;

  static Future<AppService> createInstance() async {
    final token = await secureStorage.read(key: "token");
    final client = getClient(token);
    return AppService._(client, token);
  }

  final Client client;
  final String? token;

  AppService._(this.client, this.token);
}
