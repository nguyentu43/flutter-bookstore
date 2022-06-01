import 'package:flutter_bookstore/helpers/secure_storage.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter_bookstore/.env.dart';

Client getClient(String? token) {
  final link = HttpLink(kEndpoint,
      defaultHeaders: {'Authorization': 'Bearer ${token ?? ''}'});
  return Client(link: link);
}
