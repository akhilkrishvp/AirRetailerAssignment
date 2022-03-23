// To parse this JSON data, do
//
//     final homePageModel = homePageModelFromJson(jsonString);

import 'dart:convert';

HomePageModel homePageModelFromJson(String str) =>
    HomePageModel.fromJson(json.decode(str));

String homePageModelToJson(HomePageModel data) => json.encode(data.toJson());

class HomePageModel {
  bool? status;
  List<Datum>? data;
  String? qrs;
  String? errorMessage;

  HomePageModel({
    this.status,
    this.data,
    this.qrs,
    this.errorMessage,
  });

  factory HomePageModel.fromJson(Map<String, dynamic> json) => HomePageModel(
        status: json["status"] == null ? null : json["status"],
        data: json["data"] == null
            ? null
            : List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        qrs: json["qrs"] == null ? null : json["qrs"],
      );

  Map<String, dynamic> toJson() => {
        "status": status == null ? null : status,
        "data": data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toJson())),
        "qrs": qrs == null ? null : qrs,
      };
}

class Datum {
  String? id;
  String? profileId;
  Post? postType;
  String? title;
  String? shareLink;
  String? content;
  Location? location;
  Detail? details;
  DateTime? postDate;
  DateTime? datePosted;
  String? image;
  Likes? likes;
  List<Poll>? polls;
  List<Reply>? replies;

  Datum({
    this.id,
    this.profileId,
    this.postType,
    this.title,
    this.shareLink,
    this.content,
    this.location,
    this.details,
    this.postDate,
    this.datePosted,
    this.image,
    this.likes,
    this.polls,
    this.replies,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["ID"] == null ? null : json["ID"],
        profileId: json["profile_id"] == null ? null : json["profile_id"],
        postType: json["post_type"] == null
            ? null
            : postValues.map![json["post_type"]],
        title: json["title"] == null ? null : json["title"],
        shareLink: json["share_link"] == null ? null : json["share_link"],
        content: json["content"] == null ? null : json["content"],
        location: json["location"] == null
            ? null
            : Location.fromJson(json["location"]),
        details:
            json["details"] == null ? null : Detail.fromJson(json["details"]),
        postDate: json["post_date"] == null
            ? null
            : DateTime.parse(json["post_date"]),
        datePosted: json["date_posted"] == null
            ? null
            : DateTime.parse(json["date_posted"]),
        image: json["image"] == null ? null : json["image"],
        likes: json["likes"] == null ? null : Likes.fromJson(json["likes"]),
        polls: json["polls"] == null
            ? null
            : List<Poll>.from(json["polls"].map((x) => Poll.fromJson(x))),
        replies: json["replies"] == null
            ? null
            : List<Reply>.from(json["replies"].map((x) => Reply.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "ID": id == null ? null : id,
        "profile_id": profileId == null ? null : profileId,
        "post_type": postType == null ? null : postValues.reverse[postType],
        "title": title == null ? null : title,
        "share_link": shareLink == null ? null : shareLink,
        "content": content == null ? null : content,
        "location": location == null ? null : location!.toJson(),
        "details": details == null ? null : details!.toJson(),
        "post_date": postDate == null ? null : postDate!.toIso8601String(),
        "date_posted":
            datePosted == null ? null : datePosted!.toIso8601String(),
        "image": image == null ? null : image,
        "likes": likes == null ? null : likes!.toJson(),
        "polls": polls == null
            ? null
            : List<dynamic>.from(polls!.map((x) => x.toJson())),
        "replies": replies == null
            ? null
            : List<dynamic>.from(replies!.map((x) => x.toJson())),
      };
}

class Detail {
  String? id;
  String? name;
  String? image;
  int? onlineStatus;
  React? react;

  Detail({
    this.id,
    this.name,
    this.image,
    this.onlineStatus,
    this.react,
  });

  factory Detail.fromJson(Map<String, dynamic> json) => Detail(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        image: json["image"] == null ? null : json["image"],
        onlineStatus:
            json["online_status"] == null ? null : json["online_status"],
        react: json["react"] == null ? null : reactValues.map![json["react"]],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "image": image == null ? null : image,
        "online_status": onlineStatus == null ? null : onlineStatus,
        "react": react == null ? null : reactValues.reverse[react],
      };
}

enum React { EMPTY, REACT, PURPLE, FLUFFY, TENTACLED, STICKY }

final reactValues = EnumValues({
  "\ud83d\udc4d": React.EMPTY,
  "\ud83d\ude22": React.FLUFFY,
  "\ud83d\ude2e": React.PURPLE,
  "❤️": React.REACT,
  "\ud83d\ude02": React.STICKY,
  "\ud83d\ude21": React.TENTACLED
});

class Likes {
  List<Detail>? details;
  String? count;

  Likes({
    this.details,
    this.count,
  });

  factory Likes.fromJson(Map<String, dynamic> json) => Likes(
        details: json["details"] == null
            ? null
            : List<Detail>.from(json["details"].map((x) => Detail.fromJson(x))),
        count: json["count"] == null ? null : json["count"],
      );

  Map<String, dynamic> toJson() => {
        "details": details == null
            ? null
            : List<dynamic>.from(details!.map((x) => x.toJson())),
        "count": count == null ? null : count,
      };
}

class Location {
  String? lat;
  String? lon;

  Location({
    this.lat,
    this.lon,
  });

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        lat: json["lat"] == null ? null : json["lat"],
        lon: json["lon"] == null ? null : json["lon"],
      );

  Map<String, dynamic> toJson() => {
        "lat": lat == null ? null : lat,
        "lon": lon == null ? null : lon,
      };
}

class Poll {
  String? id;
  String? userId;
  String? pollText;
  String? attachId;
  String? name;
  String? votes;

  Poll({
    this.id,
    this.userId,
    this.pollText,
    this.attachId,
    this.name,
    this.votes,
  });

  factory Poll.fromJson(Map<String, dynamic> json) => Poll(
        id: json["id"] == null ? null : json["id"],
        userId: json["user_id"] == null ? null : json["user_id"],
        pollText: json["poll_text"] == null ? null : json["poll_text"],
        attachId: json["attach_id"] == null ? null : json["attach_id"],
        name: json["name"] == null ? null : json["name"],
        votes: json["votes"] == null ? null : json["votes"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "user_id": userId == null ? null : userId,
        "poll_text": pollText == null ? null : pollText,
        "attach_id": attachId == null ? null : attachId,
        "name": name == null ? null : name,
        "votes": votes == null ? null : votes,
      };
}

enum Post { PHOTO, POLL, TEXT, VIDEO }

final postValues = EnumValues({
  "photo": Post.PHOTO,
  "poll": Post.POLL,
  "text": Post.TEXT,
  "video": Post.VIDEO
});

class Reply {
  String? id;
  Post? postNature;
  String? profileId;
  Title? title;
  Detail? details;
  String? content;
  DateTime? postDate;
  DateTime? datePosted;
  String? image;
  List<dynamic>? likes;

  Reply({
    this.id,
    this.postNature,
    this.profileId,
    this.title,
    this.details,
    this.content,
    this.postDate,
    this.datePosted,
    this.image,
    this.likes,
  });

  factory Reply.fromJson(Map<String, dynamic> json) => Reply(
        id: json["ID"] == null ? null : json["ID"],
        postNature: json["post_nature"] == null
            ? null
            : postValues.map![json["post_nature"]],
        profileId: json["profile_id"] == null ? null : json["profile_id"],
        title: json["title"] == null ? null : titleValues.map![json["title"]],
        details:
            json["details"] == null ? null : Detail.fromJson(json["details"]),
        content: json["content"] == null ? null : json["content"],
        postDate: json["post_date"] == null
            ? null
            : DateTime.parse(json["post_date"]),
        datePosted: json["date_posted"] == null
            ? null
            : DateTime.parse(json["date_posted"]),
        image: json["image"] == null ? null : json["image"],
        likes: json["likes"] == null
            ? null
            : List<dynamic>.from(json["likes"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "ID": id == null ? null : id,
        "post_nature":
            postNature == null ? null : postValues.reverse[postNature],
        "profile_id": profileId == null ? null : profileId,
        "title": title == null ? null : titleValues.reverse[title],
        "details": details == null ? null : details!.toJson(),
        "content": content == null ? null : content,
        "post_date": postDate == null ? null : postDate!.toIso8601String(),
        "date_posted":
            datePosted == null ? null : datePosted!.toIso8601String(),
        "image": image == null ? null : image,
        "likes":
            likes == null ? null : List<dynamic>.from(likes!.map((x) => x)),
      };
}

enum Title { REPLY }

final titleValues = EnumValues({"reply": Title.REPLY});

class EnumValues<T> {
  Map<String, T>? map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map!.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap!;
  }
}
