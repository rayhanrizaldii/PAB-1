import 'package:dio/dio.dart';

class apiController {
  // Fetch API using GET
  Future<List<dynamic>> getdatas() async {
    final response = await Dio().get('https://saiyaapi.site' + '/cnth/prak');

    final datas = response.data['payload'];

    return datas;
  }

  // Fetch API with parameter using GET
  // Future<List<dynamic>> getdatawithparams() async {
  //   final SharedPreferences prefs = await SharedPreferences.getInstance();

  //   final pins = await prefs.getString('pin');

  //   final _datas = {'pin': pins};
  //   final response =
  //       await Dio().get('https://saiyaapi.site' + '/cnth/prak', data: _datas);

  //   final datas = response.data['payload'];

  //   return datas;
  // }
}
