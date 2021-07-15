

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:stocklist_app/api/dto/box.dart';
import 'package:stocklist_app/api/dto/item.dart';
import 'package:stocklist_app/api/dto/stock.dart';
import 'package:fluri/fluri.dart';
import 'package:http/http.dart' as http;
import 'package:stocklist_app/entity/category.dart';

import 'dto/shopping_list.dart';
import 'dto/shopping_task.dart';

class StocklistClient {
  final String baseURL;
  final String token;
  ItemAPI itemAPI;
  StockAPI stockAPI;
  CategoryAPI categoryAPI;
  BoxAPI boxAPI;
  ShoppingListAPI shoppingListAPI;

  StocklistClient.initial({required this.baseURL, required this.token, required this.itemAPI, required this.stockAPI, required this.categoryAPI, required this.boxAPI, required this.shoppingListAPI});

  factory StocklistClient(String baseURL, String token) {
    final itemAPI = ItemAPI(baseURL: baseURL, token: token);
    final stockAPI = StockAPI(baseURL, token);
    final categoryAPI = CategoryAPI(baseURL, token);
    final boxAPI = BoxAPI(baseURL, token);
    final shoppingListAPI = ShoppingListAPI(baseURL, token);
    return StocklistClient.initial(baseURL: baseURL, itemAPI: itemAPI, token: token, stockAPI: stockAPI, categoryAPI: categoryAPI, boxAPI: boxAPI, shoppingListAPI: shoppingListAPI);
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
  Future<ItemDTO> create({ required String name, required bool isDisposable, required File? image, String? description, int? categoryId }) async {
    final builder = Fluri.from(Fluri(baseURL))
      ..appendToPath('api/items');
    final request = http.MultipartRequest('POST', builder.uri)
    ..fields['name'] = name
    ..fields['is_disposable'] = isDisposable.toString();
    if(description != null) {
      request.fields['description'] = description;
    }
    if(categoryId != null) {
      request.fields['category_id'] = categoryId.toString();
    }
    request.headers.addAll(makeHeader(token));
    if(image != null) {
      request.files.add(await MultipartFile.fromPath('image', image.path));
    }

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


}



class StockAPI {
  final String baseURL;
  final String token;
  StockAPI(this.baseURL, this.token);
  Future<List<StockDTO>> all({ int? itemId, int? boxId }) async {
    throw Exception();
  }
  Future<StockDTO> show($stockId) async {
    throw Exception();
  }
  void delete($stockId) async {
    throw Exception();
  }

  Future<void> update(int stockId, { required int? boxId, required int? itemId, required int? count, DateTime? expirationDate }) async {
    final builder =  Fluri.from(Fluri(baseURL))
      ..appendToPath("api/stocks/$stockId");

    final res = await http.put(builder.uri, headers: makeHeader(this.token), body: json.encode({
      'box_id': boxId,
      'item_id': itemId,
      'count': count,
      if(expirationDate != null)
        'expiration_date': expirationDate.toIso8601String()
    }));
    handleError(res);
  }

  Future<StockDTO> create({ required int? itemId, required int? boxId, required int? count, DateTime? expirationDate }) async{
    final builder =  Fluri.from(Fluri(baseURL))
    ..appendToPath("api/stocks");

    final res = await http.post(builder.uri, headers: makeHeader(this.token), body: json.encode({
      'box_id': boxId,
      'count': count,
      'item_id': itemId,
      if(expirationDate != null)
        'expiration_date': expirationDate.toIso8601String()
    }));
    handleError(res);
    return StockDTO.fromJson(json.decode(res.body));
  }
}

class CategoryAPI {
  final String baseURL;
  final String token;
  CategoryAPI(this.baseURL, this.token);

  Future<List<Category>> all() async {
    final res = await http.get(buildWithBaseURLAndPath(baseURL, "api/categories").uri, headers: makeHeader(this.token));
    handleError(res);
    final list = json.decode(res.body) as List<dynamic>;
    return list.map((e) => Category.fromJson(e)).toList();
  }

  Future<Category> create(String path) async {
    final res = await http.post(
      buildWithBaseURLAndPath(baseURL, "api/categories",).uri,
      headers: makeHeader(this.token),
      body: json.encode({
        'path': path
      })
    );
    handleError(res);
    return Category.fromJson(json.decode(res.body));
  }

  Future update(int categoryId, {required String path }) async {
    final res = await http.put(
      buildWithBaseURLAndPath(baseURL, "api/categories/$categoryId").uri,
      headers: makeHeader(token),
      body: json.encode(
        {'path': path}
      )
    );
    handleError(res);
  }

  Future delete(int categoryId) async {
    final res = await http.delete(
      buildWithBaseURLAndPath(baseURL, "api/categories/$categoryId").uri,
      headers: makeHeader(token),
    );
    handleError(res);
  }


}

class BoxAPI {

  final String baseURL;
  final String token;
  BoxAPI(this.baseURL, this.token);

  Future<BoxDTO> create({ required String name, String? description }) async {
    final res = await http.post(
        buildWithBaseURLAndPath(this.baseURL, "api/boxes").uri,
        headers: makeHeader(this.token),
        body: json.encode(
            {
              'name': name,
              if(description != null)
                'description': description
            }
        )
    );
    handleError(res);
    return BoxDTO.fromJson(json.decode(res.body));
  }

  Future update( int boxId ,{ required String name, String? description }) async {
    final res = await http.put(
        buildWithBaseURLAndPath(this.baseURL, "api/boxes/$boxId").uri,
        headers: makeHeader(token),
        body: json.encode(
            {
              'name': name,
              if(description != null)
                'description': description
            }
        )
    );
    handleError(res);
  }

  Future<BoxDTO> show(int boxId) async {
    final res = await http.get(
        buildWithBaseURLAndPath(baseURL, 'api/boxes/$boxId').uri,
        headers: makeHeader(token)
    );
    handleError(res);
    return BoxDTO.fromJson(json.decode(res.body));
  }

  Future<List<BoxDTO>> all() async {
    final res = await http.get(
        buildWithBaseURLAndPath(baseURL, 'api/boxes').uri,
        headers: makeHeader(token)
    );
    handleError(res);
    final list = json.decode(res.body) as List<dynamic>;

    return list.map((map)=> BoxDTO.fromJson(map)).toList();
  }
}

class ShoppingListAPI {
  final String baseURL;
  final String token;
  ShoppingListAPI(this.baseURL, this.token);

  Future<List<ShoppingListDTO>> all() async {
    final res = await http.get(
    buildWithBaseURLAndPath(baseURL, 'api/shopping-lists').uri,
    headers: makeHeader(token)
    );
    handleError(res);
    final list = json.decode(res.body) as List<dynamic>;

    return list.map((map)=> ShoppingListDTO.fromJson(map)).toList();
  }

  Future<ShoppingListDTO> show(int id) async {
    final res = await http.get(
        buildWithBaseURLAndPath(baseURL, 'api/shopping-lists/$id').uri,
        headers: makeHeader(token)
    );
    handleError(res);
    return ShoppingListDTO.fromJson(json.decode(res.body));
  }

  Future update(int id, {required String title, required int? userId }) async {
    final res = await http.put(
        buildWithBaseURLAndPath(this.baseURL, "api/shopping-lists/$id").uri,
        headers: makeHeader(token),
        body: json.encode(
            {
              'title': title,
              if(userId != null)
                'user_id': userId
            }
        )
    );
    handleError(res);
  }

  Future<ShoppingListDTO> create({required String title, required int? userId }) async {
    final builder =  Fluri.from(Fluri(baseURL))
      ..appendToPath("api/shopping-lists");

    final res = await http.post(builder.uri, headers: makeHeader(this.token), body: json.encode({
      'title': title,
      if(userId != null)
        'user_id': userId
    }));
    handleError(res);
    return ShoppingListDTO.fromJson(json.decode(res.body));
  }

  Future delete(int id) async {
    final builder =  Fluri.from(Fluri(baseURL))
      ..appendToPath('api/shopping-lists/$id');
    final res = await http.delete(builder.uri);
    handleError(res);
  }

  ShoppingTaskAPI tasks(int shoppingListId) {
    return ShoppingTaskAPI(baseURL, token, shoppingListId);
  }


}

class ShoppingTaskAPI {
  final String baseURL;
  final String token;
  final int shoppingTaskId;
  ShoppingTaskAPI(this.baseURL, this.token, this.shoppingTaskId);

  Future<List<ShoppingTaskDTO>> all() async{
    final res = await http.get(
        buildWithBaseURLAndPath(baseURL, 'api/shopping-lists/$shoppingTaskId/tasks').uri,
        headers: makeHeader(token)
    );
    handleError(res);
    final list = json.decode(res.body) as List<dynamic>;

    return list.map((map)=> ShoppingTaskDTO.fromJson(map)).toList();
  }

  Future<ShoppingTaskDTO> show(int id) async {
    final res = await http.get(
        buildWithBaseURLAndPath(baseURL, 'api/shopping-lists/$shoppingTaskId/tasks/$id').uri,
        headers: makeHeader(token)
    );
    handleError(res);
    return ShoppingTaskDTO.fromJson(json.decode(res.body));
  }

  Future update(int id, {required int itemId, required int count, required int? boxId, required DateTime? completedAt}) async {
    final res = await http.put(
        buildWithBaseURLAndPath(this.baseURL, "api/shopping-lists/$id").uri,
        headers: makeHeader(token),
        body: json.encode(
            {
              'item_id': itemId,
              'count': count,
              if(boxId != null)
                'box_id': boxId,
              if(completedAt != null)
                'completed_at': completedAt
            }
        )
    );
    handleError(res);
  }

  Future create({required int itemId, required int count, required int? boxId, required DateTime? completedAt}) async {
    final res = await http.post(
        buildWithBaseURLAndPath(this.baseURL, "api/shopping-lists/$shoppingTaskId/tasks").uri,
        headers: makeHeader(token),
        body: json.encode(
            {
              'item_id': itemId,
              'count': count,
              if(boxId != null)
                'box_id': boxId,
              if(completedAt != null)
                'completed_at': completedAt
            }
        )
    );
    handleError(res);
    return ShoppingTaskDTO.fromJson(json.decode(res.body));
  }

  Future delete(int id) async {

    final builder =  Fluri.from(Fluri(baseURL))
      ..appendToPath('api/shopping-lists/$shoppingTaskId/tasks/$id');
    final res = await http.delete(builder.uri);
    handleError(res);
  }

  Future complete(int id) async {
    final builder =  Fluri.from(Fluri(baseURL))
      ..appendToPath('api/shopping-lists/$shoppingTaskId/tasks/$id/complete');
    final res = await http.post(builder.uri);
    handleError(res);
  }

  Future incomplete(int id) async {
    final builder =  Fluri.from(Fluri(baseURL))
      ..appendToPath('api/shopping-lists/$shoppingTaskId/tasks/$id/incomplete');
    final res = await http.post(builder.uri);
    handleError(res);
  }
}

Map<String, String> makeHeader(String? token) {
  return {
    'Content-Type': 'application/json',
    if(token != null) 'Authorization' : 'Bearer $token',
    'Accept': 'application/json'
  };
}

Fluri buildWithBaseURLAndPath(String baseURL, String path) {
  return Fluri.from(Fluri(baseURL))
      ..appendToPath(path);
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

  Map<String, dynamic> toMap() {
    return json.decode(message);
  }

  String? safeGetErrorMessage(String key) {
    final errors = this.toMap()['errors'];
    if(errors == null) {
      return null;
    }
    final error = errors[key];
    if(error != null) {
      return error[0];
    }
    return null;
  }
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