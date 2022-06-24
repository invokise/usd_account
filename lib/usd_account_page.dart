import 'package:flutter/material.dart';
import 'package:usd_account/widgets/custom_list_companies.dart';
import 'package:usd_account/widgets/profile.dart';
import 'package:usd_account/widgets/transactions_history.dart';

class USDAccountPage extends StatelessWidget {
  const USDAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.roller_shades),
          ),
        ],
      ),
      body: ListView(
        children: const [
          ProfileWidget(),
          TransactionsHistoryWidget(),
          CustomListCompaniesWidget(),
          CustomListCompaniesWidget(),
          CustomListCompaniesWidget(),
        ],
      ),
    );
  }
}
