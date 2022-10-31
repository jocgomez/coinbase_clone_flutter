import 'package:coinbase_clone_flutter/model/coin.dart';
import 'package:coinbase_clone_flutter/util/theme.dart';
import 'package:flutter/material.dart';

class CoinPage extends StatefulWidget {
  final Coin coin;
  const CoinPage({required this.coin, Key? key}) : super(key: key);

  @override
  State<CoinPage> createState() => _CoinPageState();
}

class _CoinPageState extends State<CoinPage> {
  late double _coinPrice;

  @override
  void initState() {
    super.initState();
    _coinPrice = widget.coin.price;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          widget.coin.fullName,
          style: const TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: [
              Text(
                "${widget.coin.fullName} price",
                style: TextStyle(color: Colors.grey.shade700, fontSize: 14),
              ),
              Text(
                "\$${_coinPrice.toStringAsFixed(2)}",
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 50),
              Text(
                widget.coin.fullName,
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Text(
                widget.coin.ticker,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
              ),
              const SizedBox(height: 10),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 1,
                color: Colors.grey.shade300,
              ),
              const SizedBox(height: 10),
              const Text(
                'Additional information',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 10),
              _coinDetailTile('Algorithm', widget.coin.algorithm),
              _coinDetailTile('Block number', '${widget.coin.blockNumber}'),
              _coinDetailTile('Block reward', '${widget.coin.blockReward}'),
              _coinDetailTile(
                'Block time',
                widget.coin.blockTime.toStringAsFixed(2),
              ),
              _coinDetailTile('Max supply', '${widget.coin.maxSupply}'),
              const SizedBox(height: 25),
              ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0))),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 15)),
                    backgroundColor:
                        MaterialStateProperty.all(CoinbaseTheme.color)),
                child: const Text(
                  "Trade",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _coinDetailTile(String title, String value) {
    return Text(
      '$title: $value',
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w300,
      ),
    );
  }
}
