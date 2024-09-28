import 'package:crypto_coins_list/repositories/crypto_coins/models/crypto_coin.dart';

// It is our interface
abstract class AbstractCoinsRepository {
  Future<List<CryptoCoin>> getCoinsList();
}
