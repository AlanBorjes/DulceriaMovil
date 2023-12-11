import 'package:dio/dio.dart';
import 'package:dulceria/config/dio/module_network.dart';

class StoreRepository {
  final dio = NetworkModule().instance;

  Future<Response> _storesByDeliver(int idDeliver) async {
    try {
      Response response = await dio.get('/store/deliver/$idDeliver');
      return response;
    } catch (e) {
      throw Exception('Error del servidor: $e');
    }
  }

  Future<Response> _storeById(int idStore) async {
    try{
      Response response = await dio.get('/store/$idStore');
      return response;
    }catch(e){
      throw Exception('Error del servidor: $e');
    }
  }

  Future<Response> _visitsByStore(int idStore) async {
    try{
      Response response = await dio.get('/visits/store/$idStore');
      return response;
    }catch(e){
      throw Exception('Error del servidor: $e');
    }
  }

  Future<Response> _visitInfo(int idVisit) async {
    try{
      Response response = await dio.get('/orders/visit/$idVisit');
      return response;
    }catch(e){
      throw Exception('Error del servidor: $e');
    }
  }

  Future<Response> visitInfo(int idVisit) async {
    Response response = await _visitInfo(idVisit);
    if (response.statusCode == 200) {
      print(response.data);
      return response;
    } else {
      print(response.statusCode);
    }
    return response;
  }

  Future<Response> visitsByStore(int idStore) async {
    Response response = await _visitsByStore(idStore);
    if (response.statusCode == 200) {
      print(response.data);
      return response;
    } else {
      print(response.statusCode);
    }
    return response;
  }

  Future<Response> storeById(int idStore) async {
    Response response = await _storeById(idStore);
    if (response.statusCode == 200) {
      print(response.data);
      return response;
    } else {
      print(response.statusCode);
    }
    return response;
  }

  Future<Response> getStores(int idClient) async {
    Response response = await _storesByDeliver(2);
    if (response.statusCode == 200) {
      print(response.data);
      return response;
    } else {
      print(response.statusCode);
    }
    return response;
  }


}
