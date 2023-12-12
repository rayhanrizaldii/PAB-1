import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class apiController {
  // Fetch API using GET
  Future<List<dynamic>> getdatas() async {
    final response = await Dio().get('http://172.26.134.248:40/sesi1?pin=2001');

    final datas = response.data['payload'];

    return datas;
  }

  // Fetch API with parameter using GET
  Future<List<dynamic>> getdatawithparams() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    final pins = await prefs.getString('pin');

    final _datas = {'pin': pins};
    final response =
        await Dio().get('https://saiyaapi.site' + '/cnth/prak', data: _datas);

    final datas = response.data['payload'];

    return datas;
  }

// Fetching API with Pin Parameter
  Future<String> getFromApi() async {
    String apiUrl =
        'http://172.26.134.248:40/sesi1'; // Ganti dengan URL API yang sesuai

    try {
      final response = await Dio().get(apiUrl);
      if (response.statusCode == 200) {
        // Respons sukses, mengembalikan PIN dari API
        return response.data.toString();
      } else {
        // Respons gagal, tampilkan pesan atau kembalikan nilai default
        print('Gagal mendapatkandari API');
        return ''; // Kembalikan nilai default yang sesuai dengan kebutuhan Anda
      }
    } catch (e) {
      // Terjadi kesalahan saat menghubungi API, tampilkan pesan atau kembalikan nilai default
      print('Terjadi kesalahan: $e');
      return ''; // Kembalikan nilai default yang sesuai dengan kebutuhan Anda
    }
  }
// Future<bool> verifyPin(String userInputPin) async {
//   String apiUrl = 'https://example.com/api/pin'; // Ganti dengan URL API yang sesuai

//   try {
//     final response = await Dio().get(apiUrl);
//     if (response.statusCode == 200) {
//       List<dynamic> pinData = response.data['payload'];
//       for (var entry in pinData) {
//         String pinFromApi = entry['pin'];
//         if (userInputPin == pinFromApi) {
//           // Pin yang dimasukkan oleh pengguna valid
//           return true;
//         }
//       }
//     }
//   } catch (e) {
//     print('Terjadi kesalahan: $e');
//     // Handle error jika terjadi kesalahan saat menghubungi API
//   }

//   // Pin yang dimasukkan oleh pengguna tidak valid
//   return false;
// }
}
