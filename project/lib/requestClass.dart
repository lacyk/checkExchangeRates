import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Request {
  final DateTime date;
  final double currency;

  Request(this.table, this.currency, this.code, this.rates);

  // I/O Methods
  // Map<String, dynamic> toMap() {
  //   return {
  //     'name':   name,
  //     'amount': amount,
  //     'id':     id,
  //     'pass':   pass,
  //   };
  // }
  //
  // static Customer fromMap(Map<String, dynamic> map) {
  //   return Customer(map['name'], map['amount'], map['id'], map['pass']);
  // }
}


