// import 'package:http/http.dart' as http;
//
// void main() async {
//   final response = await http.get(Uri.https('jsonplaceholder.typicode.com', '/todos/1'));
//   if (response.statusCode == 200) {
//     print(response.body);
//   } else {
//     print('Request failed with status: ${response.statusCode}.');
//   }
//
//   var url = Uri.https('example.com', 'whatsit/create');
//   var response1 = await http.post(url, body: {'name': 'doodle', 'color': 'blue'});
//   var gett = await Uri.httpget(url);
//   print('Response status: ${response1.statusCode}');
//   print('Response body: ${response1.body}');
//
//   if (gett.statusCode == 200) {
//     print(gett.body);
//   } else {
//     print('Request failed with status: ${gett.statusCode}.');
//   }
//
// }
