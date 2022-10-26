import 'package:flutter/material.dart';

import '../widgets/coinbase_bottom_bar.dart';
import '../widgets/top_bar.dart';
import '../widgets/assets_view_header.dart';
import '../widgets/balance_header.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView(
            children: const [
              TopBar(),
              BalanceHeader(balance: 259.54),
              AssetsViewHeader(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CoinbaseBottomBar(
        selectedIndex: (i) {
          // change the page according to the index
          // uncomment in case you want to implement more pages and make sure
          // to create a _selectedIndex variable

          // setState((){
          //   _selectedIndex = i;
          // })
        },
      ),
    );
  }
}
