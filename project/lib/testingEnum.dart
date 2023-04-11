import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class ExchangeRate {
  final String currencyCode;
  final DateTime date;

  ExchangeRate(this.currencyCode, this.date);

  Future<double> fetchRate() async {
    final url = 'http://api.nbp.pl/api/exchangerates/rates/A/$currencyCode/${date.toString().substring(0, 10)}/?format=json';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      return jsonResponse['rates'][0]['mid'];
    } else {
      throw Exception('Failed to fetch exchange rate. Error ${response.statusCode}: ${response.reasonPhrase}');
      // throw Exception('Failed to fetch exchange rate. Error ${response.body}: ${response.reasonPhrase}');
    }
  }
}

void main(List<String> arguments) async {
  // ask user for currency and date
  print('Which currency do you want to see? (e.g. USD)');
  final currency = stdin.readLineSync();
  print('For which date do you want to see the exchange rate? (yyyy-mm-dd)');
  final dateString = stdin.readLineSync();
  final date = DateTime.parse(dateString!);

  // create ExchangeRate object and fetch exchange rate
  final exchangeRate = ExchangeRate(currency!, date);
  try {
    final rate = await exchangeRate.fetchRate();
    // display exchange rate to user
    print('The exchange rate for $currency on $dateString is $rate.');
  } catch (e) {
    // handle errors
    print(e.toString());
  }
}
