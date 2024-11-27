// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:money_tracking_app/Utils/env.dart';
import 'package:money_tracking_app/models/user.dart';

class CallApi {
  static Future<List<User>> CheckLoginApi(User user) async {
    final responseData = await http.post(
      Uri.parse("${Env.baseUrl}/MoneyTrackingService/apis/check_login_api.php"),
      body: jsonEncode(user.toJson()),
      headers: {"Content-Type": "application/json"},
    );
    if (responseData.statusCode == 200) {
      //แปลงข้อมูลที่ส่งกลับมาจาก JSON เพื่อใช้ในแอปฯ
      final responseDataDecode = jsonDecode(responseData.body);
      List<User> data = await responseDataDecode
          .map<User>((json) => User.fromJson(json))
          .toList();
      //ส่งค่าข้อมูลที่ได้ไปยังจุดที่เรียกใช้เมธอด
      return data;
    } else {
      throw Exception('Failed to .... login');
    }
  }

  static Future<List<User>> RegisterAPI(User user) async {
    final responseData = await http.post(
      Uri.parse("${Env.baseUrl}/MoneyTrackingService/apis/insert_new_user_api.php"),
      body: jsonEncode(user.toJson()),
      headers: {"Content-Type": "application/json"},
    );
    if (responseData.statusCode == 200) {
      //แปลงข้อมูลที่ส่งกลับมาจาก JSON เพื่อใช้ในแอปฯ
      print(responseData.body);
      final responseDataDecode = jsonDecode(responseData.body);
      List<User> data = await responseDataDecode
          .map<User>((json) => User.fromJson(json))
          .toList();
      //ส่งค่าข้อมูลที่ได้ไปยังจุดที่เรียกใช้เมธอด
      return data;
    } else {
      throw Exception('Failed to .... login');
    }
  }
}
