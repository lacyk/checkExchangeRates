import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

void main() async {

  // String userDate = '2023-03-10';
  final DateFormat formatter = DateFormat('yyyy-MM-dd');
  DateTime dateNow = DateTime(2023, 03, 23);
  final String userDate = formatter.format(dateNow);


  String userCurrency = 'usd';
  String userAnswerFormat = 'json';

  // another way to use Uri, more specified
  // http://api.nbp.pl/api/exchangerates/rates/A/USD/2023-03-17/?format=json
  Uri httpUri = Uri(
           scheme: 'http',
           host: 'api.nbp.pl',
           // path: "/api/exchangerates/tables/A/",
           path: "/api/exchangerates/rates/A/$userCurrency/$userDate",
           queryParameters: {'format': userAnswerFormat}
      );
  print(httpUri);

  var response = await http.get(httpUri);
  print(response.body);

  print(dateNow);
  print(userDate);
}