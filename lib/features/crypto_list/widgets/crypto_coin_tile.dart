import 'package:crypto_coins_list/repositories/crypto_coins/models/crypto_coin.dart';
import 'package:flutter/material.dart';

class CryptoCoinTile extends StatelessWidget {
  // ignore: use_super_parameters
  const CryptoCoinTile({
    Key? key,
    required this.coin,
  }) : super(key: key);

  final CryptoCoin coin;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      leading: Image.network(coin.imageUrl),
      title: Text(
        coin.name,
        style: theme.textTheme.bodyMedium,
      ),
      subtitle: Text(
        '${coin.priceInUSD} \$',
        style: theme.textTheme.bodyMedium,
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        // I-st method of Navigation (No data for analytics where go users)
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) => const CryptoCoinScreen(),
        //   ),
        // );

        // II-nd method of Navigation
        Navigator.of(context).pushNamed(
          '/coin',
          arguments: coin.name,
        );
      },
    );
  }
}
