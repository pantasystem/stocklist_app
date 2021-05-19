

import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:stocklist_app/api/dto/item.dart';
import 'package:stocklist_app/api/dto/stock.dart';
import 'package:fluri/fluri.dart';
import 'package:http/http.dart' as http;

class StocklistClient {
  final String baseURL;
  final String token;
  ItemAPI itemAPI;

  StocklistClient.initial({required this.baseURL, required this.token, required this.itemAPI});

  factory StocklistClient(String baseURL, String token) {
    final itemAPI = ItemAPI(baseURL: baseURL, token: token);
    return StocklistClient.initial(baseURL: baseURL, itemAPI: itemAPI, token: token);
  }


}

class ItemAPI {

  final String baseURL;
  final String token;
  ItemAPI({required this.baseURL, required this.token});


  Future<List<ItemDTO>> all({ DateTime? sinceUpdatedAt }) async{
    final builder = Fluri.from(Fluri(baseURL))
      ..appendToPath('api/items');
    if(sinceUpdatedAt != null) {
      builder.queryParameters = {
        'sinceUpdatedAt': sinceUpdatedAt.toIso8601String()
      };
    }
    
    final res = await http.get(builder.uri, headers: makeHeader(token));
    handleError(res);
    List<dynamic> parsed = json.decode(res.body) as List<dynamic>;
    return parsed.map((e) => ItemDTO.fromJson(e)).toList();
  }

  Future<ItemDTO> show(int itemId) async {
    final builder = Fluri.from(Fluri(baseURL))
      ..appendToPath('api/items/$itemId');
    final res = await http.get(builder.uri, headers: makeHeader(token));
    handleError(res);
    print(res.body);
    return ItemDTO.fromJson(json.decode(res.body));
  }
  Future<ItemDTO> create({ required String name, required bool isDisposable, required File image, String? description}) async {
    final builder = Fluri.from(Fluri(baseURL))
      ..appendToPath('api/items');
    final request = http.MultipartRequest('POST', builder.uri)
    ..fields['name'] = name
    ..fields['is_disposable'] = isDisposable.toString();
    if(description != null) {
      request.fields['description'] = description;
    }
    request.headers.addAll(makeHeader(token));
    request.files.add(await MultipartFile.fromPath('image', image.path));
    final stream = await request.send();
    final res = await Response.fromStream(stream);
    handleError(res);
    return ItemDTO.fromJson(json.decode(res.body));
  }

  Future<void> delete(int itemId) async {
    final builder =  Fluri.from(Fluri(baseURL))
        ..appendToPath('api/items/$itemId');
    final res = await http.delete(builder.uri);
    handleError(res);
  }

  StockAPI stocks(int itemId) {
    return StockAPI();
  }
}



class StockAPI {
  Future<List<StockDTO>> all() async {
    throw Exception();
  }
  Future<StockDTO> show($stockId) async {
    throw Exception();
  }
  void delete($stockId) async {
    throw Exception();
  }
  Future<StockDTO> create() async{
    throw Exception();
  }
}

class ItemsStockAPI implements StockAPI {
  @override
  Future<List<StockDTO>> all({String? hoge}) {
    // TODO: implement all
    throw UnimplementedError();
  }

  @override
  Future<StockDTO> show($stockId) {
    // TODO: implement show
    throw UnimplementedError();
  }

  @override
  void delete($stockId) {
    // TODO: implement delete
  }

  @override
  Future<StockDTO> create() {
    // TODO: implement create
    throw UnimplementedError();
  }
}

Map<String, String> makeHeader(String? token) {
  return {
    'Content-Type': 'application/json',
    if(token != null) 'Authorization' : 'Bearer $token',
    'Accept': 'application/json'
  };
}

class AuthorizationException implements Exception{

  final String message;
  AuthorizationException(this.message);
  @override
  String toString() => message;
}

class ClientException implements Exception {
  final String message;
  ClientException(this.message);
  @override
  String toString() => message;
}

class ServerException implements Exception {
  final String message;
  ServerException(this.message);
  @override
  String toString() => message;
}

class ValidationException implements Exception {
  final String message;
  ValidationException(this.message);
  @override
  String toString() => message;
}

void handleError(Response res) {
  if(res.statusCode >= 200 && res.statusCode < 300) {
    return;
  }
  if(res.statusCode == 400) {
    throw ClientException(res.body);
  }
  if(res.statusCode == 500) {
    throw ServerException(res.body);
  }
  if(res.statusCode == 401) {
    throw AuthorizationException(res.body);
  }
  if(res.statusCode == 422) {
    throw ValidationException(res.body);
  }
  throw Exception("http error status:${res.statusCode}, message:${res.body}");
}