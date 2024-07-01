import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:webtoon_app/model/webtoon_model.dart';

class ApiService {
  static const String baseUrl =
      "https://webtoon-crawler.nomadcoders.workers.dev";
  static const String today = "today"; //API URL의 엔드포인트

  //state가 없는 클래스(static으로)
  static Future<List<WebtoonModel>> getTodaysToons() async {
    List<WebtoonModel> webtoonInstances = []; //웹툰 리스트
    final url = Uri.parse('$baseUrl/$today'); //url 서버에 요청
    final response = await http.get(url); //서버에 요청한 처리를 기다렸다가 받으면 response로 저장
    if (response.statusCode == 200) {
      //200: 요청이 성공함
      //jsonDecode(): string을 json으로 디코딩
      final List<dynamic> webtoons = jsonDecode(response.body);
      for (var webtoon in webtoons) {
        final instance = WebtoonModel.fromJson(webtoon);
        webtoonInstances.add(instance);
      }
      return webtoonInstances;
    }
    throw Error();
  }
}