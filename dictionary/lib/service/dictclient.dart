import 'package:dio/dio.dart';

class DictClient {
  Dio dict = Dio();

  search({required String? query}) async {
    String dicturl = "https://api.dictionaryapi.dev/api/v2/entries/en/$query";
    try {
      var resp = await dict.get(dicturl);
      resp.data;
      print(
          "this is the response from the api ${resp.data[0]['meanings'][0]['definitions'][0]['definition']}");
      return resp.data[0]['meanings'][0]['definitions'][0]['definition'];
    } catch (error) {
      print("There is an error in network");
    }
  }
}
