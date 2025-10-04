import 'package:meta/meta.dart';
import 'dart:convert';

class ResultModel {
    final List<Result> results;

    ResultModel({
        required this.results,
    });

    factory ResultModel.fromRawJson(String str) => ResultModel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory ResultModel.fromJson(Map<String, dynamic> json) => ResultModel(
        results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
    };
}

class Result {
    final List<Alternative> alternatives;

    Result({
        required this.alternatives,
    });

    factory Result.fromRawJson(String str) => Result.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Result.fromJson(Map<String, dynamic> json) => Result(
        alternatives: List<Alternative>.from(json["alternatives"].map((x) => Alternative.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "alternatives": List<dynamic>.from(alternatives.map((x) => x.toJson())),
    };
}

class Alternative {
    final String transcript;
    final double confidence;

    Alternative({
        required this.transcript,
        required this.confidence,
    });

    factory Alternative.fromRawJson(String str) => Alternative.fromJson(json.decode(str));

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
