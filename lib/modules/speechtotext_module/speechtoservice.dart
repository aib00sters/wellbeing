import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:wellbeings/modules/chat_bot_modeule/models/respocemodel.dart';
import 'package:wellbeings/modules/speechtotext_module/speechmodel.dart';

Future<ResultModel>m({
  required String audiocontent,
}) async {
  // Map map = {"prompt": text1};
  const String apiKey = 'AIzaSyBBOCHroicaArCBbGlhsCGOTCkmZdhB9nA';
  const String url =
      'https://speech.googleapis.com/v1/speech:recognize?key=$apiKey';
  Map<String, dynamic> data = {
    'config': {
      'encoding': "MP3", // Or the appropriate encoding
      'sampleRateHertz': 16000, // Or the appropriate rate
      'languageCode': 'en-US', // Or the appropriate language code
      "enableAutomaticPunctuation": true,
      "model": "default"
    },
    'audio': {
      'content': audiocontent,
    },
  };
  try {
    final response = await http.post(
      Uri.parse(url),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode(data),
    );
    final Map<String, dynamic> decoded = jsonDecode(response.body);
    if (response.statusCode == 200) {
      //return resp.body;
      final response = ResultModel.fromJson(decoded);
      print(response);
      return response;
    } else {
      throw Exception('Failed to load response');
    }
  } on SocketException {
    throw Exception('Server error');
  } on HttpException {
    throw Exception('Something went wrong');
  } on FormatException {
    throw Exception('Bad request');
  } catch (e) {
    throw Exception(e.toString());
  }
}
