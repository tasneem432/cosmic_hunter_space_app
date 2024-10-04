// To parse this JSON data, do
//
//     final photoDayModel = photoDayModelFromJson(jsonString);

import 'dart:convert';

List<PhotoDayModel> photoDayModelFromJson(String str) => List<PhotoDayModel>.from(json.decode(str).map((x) => PhotoDayModel.fromJson(x)));

String photoDayModelToJson(List<PhotoDayModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PhotoDayModel {
    DateTime? date;
    String? explanation;
    String? hdurl;
    String? mediaType;
    String? serviceVersion;
    String? title;
    String? url;
    String? copyright;

    PhotoDayModel({
        this.date,
        this.explanation,
        this.hdurl,
        this.mediaType,
        this.serviceVersion,
        this.title,
        this.url,
        this.copyright,
    });

    factory PhotoDayModel.fromJson(Map<String, dynamic> json) => PhotoDayModel(
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        explanation: json["explanation"],
        hdurl: json["hdurl"],
        mediaType: json["media_type"],
        serviceVersion: json["service_version"],
        title: json["title"],
        url: json["url"],
        copyright: json["copyright"],
    );

    Map<String, dynamic> toJson() => {
        "date": "${date!.year.toString().padLeft(4, '0')}-${date!.month.toString().padLeft(2, '0')}-${date!.day.toString().padLeft(2, '0')}",
        "explanation": explanation,
        "hdurl": hdurl,
        "media_type": mediaType,
        "service_version": serviceVersion,
        "title": title,
        "url": url,
        "copyright": copyright,
    };
}
