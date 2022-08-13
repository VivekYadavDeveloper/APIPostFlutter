import 'dart:convert';

import 'package:api_get/api_mode.dart';
import 'package:api_get/constants.dart';
import 'package:http/http.dart' as http;

Future<Data?> getData() async {
  var map = {
    'key': Constants.key,
    'code': Constants.code,
    'erp_name': 'Henry Orlando Noguera Garzon',
    'app_name': 'Fiestup'
  };
  final response = await http.post(
    Uri.parse(
        'https://development.pearl-developer.com/webapps/welcome/app_info'),
    body: map,
  );

  if (response.statusCode == 200) {
    return Data.fromJson(jsonDecode(response.body));
  }
  return null;
}
