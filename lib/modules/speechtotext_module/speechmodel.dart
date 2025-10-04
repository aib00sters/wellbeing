import 'package:meta/meta.dart';
import 'dart:convert';

class ResultModel {
  final List<Result> results;
  final String totalBilledTime;
  final String requestId;

  ResultModel({
    required this.results,
    required this.totalBilledTime,
    required this.requestId,
  });

  factory ResultModel.fromRawJson(String str) =>
      ResultModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ResultModel.fromJson(Map<String, dynamic> json) => ResultModel(
        results:
            List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
        totalBilledTime: json["totalBilledTime"],
        requestId: json["requestId"],
      );

  Map<String, dynamic> toJson() => {
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
        "totalBilledTime": totalBilledTime,
        "requestId": requestId,
      };
}

class Result {
  final List<Alternative> alternatives;
  final String resultEndTime;
  final String languageCode;

  Result({
    required this.alternatives,
    required this.resultEndTime,
    required this.languageCode,
  });

  factory Result.fromRawJson(String str) => Result.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        alternatives: List<Alternative>.from(
            json["alternatives"].map((x) => Alternative.fromJson(x))),
        resultEndTime: json["resultEndTime"],
        languageCode: json["languageCode"],
      );

  Map<String, dynamic> toJson() => {
        "alternatives": List<dynamic>.from(alternatives.map((x) => x.toJson())),
        "resultEndTime": resultEndTime,
        "languageCode": languageCode,
      };
}

class Alternative {
  final String transcript;
  final double confidence;

  Alternative({
    required this.transcript,
    required this.confidence,
  });

  factory Alternative.fromRawJson(String str) =>
      Alternative.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Alternative.fromJson(Map<String, dynamic> json) => Alternative(
        transcript: json["transcript"],
        confidence: json["confidence"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "transcript": transcript,
        "confidence": confidence,
      };
}
