import 'package:dio/dio.dart';
import 'package:dulceria/config/dio/module_network.dart';

class VisitRepository {
  final dio = NetworkModule().instance;

  Future<Response> _getDeliverVisits(int idDeliver) async {
    try {
      Response response = await dio.get('/visits/pending/$idDeliver');
      return response;
    } catch (e) {
      throw Exception('Error del servidor: $e');
    }
  }

  Future<Response> getDeliverVisits(int idDeliver) async {
    Response response = await _getDeliverVisits(2);
    if (response.statusCode == 200) {
      print(response.data);
      return response;
    } else {
      print(response.statusCode);
    }
    return response;
  }

}