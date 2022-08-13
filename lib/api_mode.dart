// To parse this JSON data, do
//
//     final data = dataFromJson(jsonString);

import 'dart:convert';

Data dataFromJson(String str) => Data.fromJson(
      json.decode(str),
    );

String dataToJson(Data data) => json.encode(
      data.toJson(),
    );

class Data {
  Data({
    required this.response,
    required this.message,
  });

  String response;
  List<Message> message;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        response: json["response"],
        message: List<Message>.from(
          json["message"].map(
            (x) => Message.fromJson(x),
          ),
        ),
      );

  Map<String, dynamic> toJson() => {
        "response": response,
        "message": List<dynamic>.from(message.map((x) => x.toJson())),
      };
}

class Message {
  Message({
    required this.appId,
    required this.erpName,
    required this.appName,
    required this.appLink,
    required this.appUrl,
    required this.appStoreLink,
    required this.appVersionCode,
    required this.appVersionName,
    required this.iosAppVersionCode,
    required this.iosAppVersionName,
    required this.updatetime,
  });

  String appId;
  String erpName;
  String appName;
  String appLink;
  String appUrl;
  String appStoreLink;
  String appVersionCode;
  String appVersionName;
  String iosAppVersionCode;
  String iosAppVersionName;
  DateTime updatetime;

  factory Message.fromJson(Map<String, dynamic> json) => Message(
        appId: json["app_id"],
        erpName: json["erp_name"],
        appName: json["app_name"],
        appLink: json["app_link"],
        appUrl: json["app_url"],
        appStoreLink: json["app_store_link"],
        appVersionCode: json["app_version_code"],
        appVersionName: json["app_version_name"],
        iosAppVersionCode: json["ios_app_version_code"],
        iosAppVersionName: json["ios_app_version_name"],
        updatetime: DateTime.parse(json["updatetime"]),
      );

  Map<String, dynamic> toJson() => {
        "app_id": appId,
        "erp_name": erpName,
        "app_name": appName,
        "app_link": appLink,
        "app_url": appUrl,
        "app_store_link": appStoreLink,
        "app_version_code": appVersionCode,
        "app_version_name": appVersionName,
        "ios_app_version_code": iosAppVersionCode,
        "ios_app_version_name": iosAppVersionName,
        "updatetime": updatetime.toIso8601String(),
      };
}
