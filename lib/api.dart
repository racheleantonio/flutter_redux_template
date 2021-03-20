// import 'dart:async';
// import 'dart:convert';

// import 'package:http/http.dart' as http;

// // ignore: camel_case_types
// class API_Manager {
//   Future<Type> getNews() async {
//     var client = http.Client();
//     var newsModel;

//     try {
//       var response = await client.get();
//       if (response.statusCode == 200) {
//         var jsonString = response.body;
//         var jsonMap = json.decode(jsonString);

//         newsModel = NewsModel.fromJson(jsonMap);
//       }
//     } on Exception {
//       return newsModel;
//     }

//     return newsModel;
//   }
// }
