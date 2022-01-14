import 'package:gql_http_link/gql_http_link.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter_bookstore/.env.dart';

final link = HttpLink(kEndpoint, defaultHeaders: {'Authorization': 'Bearer '});
final client = Client(link: link);
