// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) =>
    LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  bool? status;
  String? uname;
  String? name;
  String? panchayath;
  String? district;
  String? chatToken;
  String? stateName;
  String? districtName;
  String? agoraId;
  String? agoraKey;
  String? ward;
  String? phone;
  Shopping? shopping;
  bool? isVolunteer;
  String? profileId;
  String? userToken;
  int? loginStatus;
  Result? result;
  String? errorMessage;

  LoginModel(
      {this.status,
      this.uname,
      this.name,
      this.panchayath,
      this.district,
      this.chatToken,
      this.stateName,
      this.districtName,
      this.agoraId,
      this.agoraKey,
      this.ward,
      this.phone,
      this.shopping,
      this.isVolunteer,
      this.profileId,
      this.userToken,
      this.loginStatus,
      this.result,
      this.errorMessage});

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        status: json["status"] == null ? null : json["status"],
        uname: json["uname"] == null ? null : json["uname"],
        name: json["name"] == null ? null : json["name"],
        panchayath: json["panchayath"] == null ? null : json["panchayath"],
        district: json["district"] == null ? null : json["district"],
        chatToken: json["chatToken"] == null ? null : json["chatToken"],
        stateName: json["stateName"] == null ? null : json["stateName"],
        districtName:
            json["districtName"] == null ? null : json["districtName"],
        agoraId: json["agora_id"] == null ? null : json["agora_id"],
        agoraKey: json["agora_key"] == null ? null : json["agora_key"],
        ward: json["ward"] == null ? null : json["ward"],
        phone: json["phone"] == null ? null : json["phone"],
        shopping: json["shopping"] == null
            ? null
            : Shopping.fromJson(json["shopping"]),
        isVolunteer: json["is_volunteer"] == null ? null : json["is_volunteer"],
        profileId: json["profile_id"] == null ? null : json["profile_id"],
        userToken: json["user_token"] == null ? null : json["user_token"],
        loginStatus: json["login_status"] == null ? null : json["login_status"],
        result: json["result"] == null ? null : Result.fromJson(json["result"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status == null ? null : status,
        "uname": uname == null ? null : uname,
        "name": name == null ? null : name,
        "panchayath": panchayath == null ? null : panchayath,
        "district": district == null ? null : district,
        "chatToken": chatToken == null ? null : chatToken,
        "stateName": stateName == null ? null : stateName,
        "districtName": districtName == null ? null : districtName,
        "agora_id": agoraId == null ? null : agoraId,
        "agora_key": agoraKey == null ? null : agoraKey,
        "ward": ward == null ? null : ward,
        "phone": phone == null ? null : phone,
        "shopping": shopping == null ? null : shopping!.toJson(),
        "is_volunteer": isVolunteer == null ? null : isVolunteer,
        "profile_id": profileId == null ? null : profileId,
        "user_token": userToken == null ? null : userToken,
        "login_status": loginStatus == null ? null : loginStatus,
        "result": result == null ? null : result!.toJson(),
      };
}

class Result {
  Data? data;
  int? id;
  Caps? caps;
  String? capKey;
  List<String>? roles;
  Map<String, bool>? allcaps;
  dynamic? filter;

  Result({
    this.data,
    this.id,
    this.caps,
    this.capKey,
    this.roles,
    this.allcaps,
    this.filter,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
        id: json["ID"] == null ? null : json["ID"],
        caps: json["caps"] == null ? null : Caps.fromJson(json["caps"]),
        capKey: json["cap_key"] == null ? null : json["cap_key"],
        roles: json["roles"] == null
            ? null
            : List<String>.from(json["roles"].map((x) => x)),
        allcaps: json["allcaps"] == null
            ? null
            : Map.from(json["allcaps"])
                .map((k, v) => MapEntry<String, bool>(k, v)),
        filter: json["filter"],
      );

  Map<String, dynamic> toJson() => {
        "data": data == null ? null : data!.toJson(),
        "ID": id == null ? null : id,
        "caps": caps == null ? null : caps!.toJson(),
        "cap_key": capKey == null ? null : capKey,
        "roles":
            roles == null ? null : List<dynamic>.from(roles!.map((x) => x)),
        "allcaps": allcaps == null
            ? null
            : Map.from(allcaps!).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "filter": filter,
      };
}

class Caps {
  bool? pendingUser;
  bool? bbpParticipant;

  Caps({
    this.pendingUser,
    this.bbpParticipant,
  });

  factory Caps.fromJson(Map<String, dynamic> json) => Caps(
        pendingUser: json["pending_user"] == null ? null : json["pending_user"],
        bbpParticipant:
            json["bbp_participant"] == null ? null : json["bbp_participant"],
      );

  Map<String, dynamic> toJson() => {
        "pending_user": pendingUser == null ? null : pendingUser,
        "bbp_participant": bbpParticipant == null ? null : bbpParticipant,
      };
}

class Data {
  String? id;
  String? userLogin;
  String? userPass;
  String? userNicename;
  String? userEmail;
  String? userUrl;
  DateTime? userRegistered;
  String? userActivationKey;
  String? userStatus;
  String? displayName;
  String? image;

  Data({
    this.id,
    this.userLogin,
    this.userPass,
    this.userNicename,
    this.userEmail,
    this.userUrl,
    this.userRegistered,
    this.userActivationKey,
    this.userStatus,
    this.displayName,
    this.image,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["ID"] == null ? null : json["ID"],
        userLogin: json["user_login"] == null ? null : json["user_login"],
        userPass: json["user_pass"] == null ? null : json["user_pass"],
        userNicename:
            json["user_nicename"] == null ? null : json["user_nicename"],
        userEmail: json["user_email"] == null ? null : json["user_email"],
        userUrl: json["user_url"] == null ? null : json["user_url"],
        userRegistered: json["user_registered"] == null
            ? null
            : DateTime.parse(json["user_registered"]),
        userActivationKey: json["user_activation_key"] == null
            ? null
            : json["user_activation_key"],
        userStatus: json["user_status"] == null ? null : json["user_status"],
        displayName: json["display_name"] == null ? null : json["display_name"],
        image: json["image"] == null ? null : json["image"],
      );

  Map<String, dynamic> toJson() => {
        "ID": id == null ? null : id,
        "user_login": userLogin == null ? null : userLogin,
        "user_pass": userPass == null ? null : userPass,
        "user_nicename": userNicename == null ? null : userNicename,
        "user_email": userEmail == null ? null : userEmail,
        "user_url": userUrl == null ? null : userUrl,
        "user_registered":
            userRegistered == null ? null : userRegistered!.toIso8601String(),
        "user_activation_key":
            userActivationKey == null ? null : userActivationKey,
        "user_status": userStatus == null ? null : userStatus,
        "display_name": displayName == null ? null : displayName,
        "image": image == null ? null : image,
      };
}

class Shopping {
  String? id;
  String? name;
  String? iso2;
  String? iso3;
  String? unicode;
  String? dial;
  String? currency;
  String? capital;
  String? continent;
  String? shopping;
  String? isActive;
  String? phone;

  Shopping({
    this.id,
    this.name,
    this.iso2,
    this.iso3,
    this.unicode,
    this.dial,
    this.currency,
    this.capital,
    this.continent,
    this.shopping,
    this.isActive,
    this.phone,
  });

  factory Shopping.fromJson(Map<String, dynamic> json) => Shopping(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        iso2: json["iso2"] == null ? null : json["iso2"],
        iso3: json["iso3"] == null ? null : json["iso3"],
        unicode: json["unicode"] == null ? null : json["unicode"],
        dial: json["dial"] == null ? null : json["dial"],
        currency: json["currency"] == null ? null : json["currency"],
        capital: json["capital"] == null ? null : json["capital"],
        continent: json["continent"] == null ? null : json["continent"],
        shopping: json["shopping"] == null ? null : json["shopping"],
        isActive: json["is_active"] == null ? null : json["is_active"],
        phone: json["phone"] == null ? null : json["phone"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "iso2": iso2 == null ? null : iso2,
        "iso3": iso3 == null ? null : iso3,
        "unicode": unicode == null ? null : unicode,
        "dial": dial == null ? null : dial,
        "currency": currency == null ? null : currency,
        "capital": capital == null ? null : capital,
        "continent": continent == null ? null : continent,
        "shopping": shopping == null ? null : shopping,
        "is_active": isActive == null ? null : isActive,
        "phone": phone == null ? null : phone,
      };
}
