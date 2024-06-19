import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectivityService {
  final Connectivity _connectivity = Connectivity();
  bool _simulateNoConnection = true; // Флаг для имитации отсутствия интернета

  void simulateNoConnection(bool value) {
    _simulateNoConnection = value;
  }

  Future<bool> isConnected() async {
    if (_simulateNoConnection) {
      return false;
    }
    var connectivityResult = await _connectivity.checkConnectivity();
    return connectivityResult != ConnectivityResult.none;
  }
}
