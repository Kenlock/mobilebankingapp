import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:mobilebanking/business_logic/models/account.dart';
import 'package:mobilebanking/business_logic/models/quick_service_model.dart';
import 'package:mobilebanking/business_logic/models/user.dart';
import 'package:mobilebanking/main.dart';
import 'package:mobilebanking/ui/widgets/AccountInfoCard.dart';
import 'package:mobilebanking/ui/widgets/IconCard.dart';
import 'package:mobilebanking/ui/widgets/MyDrawer.dart';
import 'package:mobilebanking/ui/widgets/PageBackground.dart';
import 'package:mobilebanking/ui/widgets/TransactionHistoryCard.dart';
import 'package:mobilebanking/ui/widgets/TransactionSummaryCard.dart';
import 'package:mobilebanking/utils/constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  SwiperController _swiperController;

  User user = User(
    accountNumber: '5011010175592005',
    username: 'etoretornam',
    firstname: 'Anyidoho',
    lastname: 'Etornam',
  );

  List<Account> accounts = [
    Account(
        accountNumber: '5011010175592005',
        productCode: 'TH667222',
        accountType: 'Savings',
        availableBalance: 5000.23,
        bookBalance: 5000.23,
        currencyCode: 'GHS'),
    Account(
        accountNumber: '7090999733636333',
        productCode: 'GH6673883',
        accountType: 'Current',
        availableBalance: 10000.45,
        bookBalance: 12000.50,
        currencyCode: 'GHS'),
  ];

  @override
  void initState() {
    _swiperController = SwiperController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, _) {
        //final appState = watch(appBlocProvider).state;
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                'Welcome! ${user.firstname}',
              ),
              elevation: 0,
              centerTitle: true,
              brightness: Brightness.light,
            ),
            body: PageBackground(
              child: _buildBody(context),
            ),
            drawer: MyDrawer(),
          ),
        );
      },
    );
  }

  Widget _buildBody(BuildContext context) {
    List<QuickService> quickServices =
        context.read(appBlocProvider).state.quickServices;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Material(
          elevation: 2,
          borderRadius: BorderRadius.circular(5.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 150,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Swiper(
                itemCount: accounts.length,
                loop: false,
                controller: _swiperController,
                pagination: SwiperPagination(
                  builder: DotSwiperPaginationBuilder(
                    color: Colors.grey,
                    activeColor: Colors.teal,
                  ),
                ),
                itemBuilder: (BuildContext context, int index) {
                  //return Text('${accounts[index].accountNumber}');
                  return AccountInfoCard(
                    imageUrl: 'assets/images/user-profile.jpg',
                    accountType: accounts[index].accountType,
                    accountName: '${user.firstname} ${user.lastname}',
                    currency: accounts[index].currencyCode,
                    availableBalance: accounts[index].availableBalance,
                    accountNumber: accounts[index].accountNumber,
                  );
                },
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        Expanded(
          child: ListView(
            children: [
              Row(children: [
                Text(
                  'QUICK SERVICES',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ]),
              Container(
                height: 150,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Wrap(
                        direction: Axis.horizontal,
                        spacing: 20.0,
                        children: quickServices
                            .map((item) => IconCard(
                                  imageUrl: item.imageUrl,
                                  textLabel: item.label,
                                  onPressed: () {
                                    print('hey');
                                  },
                                ))
                            .toList()
                            .cast<Widget>(),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: Text(
                  'LAST TRANSACTIONS',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 250,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    TransactionSummaryCard(
                      onPressed: () {
                        print('hello fam1');
                      },
                      amount: 'GHS400',
                      type: TRANSACTION_TYPE_CREDIT,
                      date: 'Monday 21 October, 2020',
                      narration:
                          'Mobile Money Transaction amdmadmsdadk dajsdasdmadjasd',
                    ),
                    SizedBox(height: 20),
                    TransactionSummaryCard(
                      onPressed: () {
                        print('hello fam2');
                      },
                      amount: 'GHS600',
                      type: TRANSACTION_TYPE_DEBIT,
                      date: 'Sunday 02 December, 2019',
                      narration: 'Mobile Money Transaction',
                    ),
                    SizedBox(height: 20),
                    TransactionSummaryCard(
                      onPressed: () {
                        print('hello fam2');
                      },
                      amount: 'GHS600',
                      type: TRANSACTION_TYPE_DEBIT,
                      date: 'Sunday 02 December, 2019',
                      narration: 'Mobile Money Transaction',
                    ),
                    SizedBox(height: 20),
                    TransactionSummaryCard(
                      onPressed: () {
                        print('hello fam2');
                      },
                      amount: 'GHS600',
                      type: TRANSACTION_TYPE_DEBIT,
                      date: 'Sunday 02 December, 2019',
                      narration: 'Mobile Money Transaction',
                    ),
                    SizedBox(height: 20),
                    TransactionSummaryCard(
                      onPressed: () {
                        print('hello fam2');
                      },
                      amount: 'GHS600',
                      type: TRANSACTION_TYPE_CREDIT,
                      date: 'Sunday 02 December, 2019',
                      narration: 'Mobile Money Transaction',
                    ),
                    SizedBox(height: 20),
                    TransactionSummaryCard(
                      onPressed: () {
                        print('hello fam2');
                      },
                      amount: 'GHS600',
                      type: TRANSACTION_TYPE_DEBIT,
                      date: 'Sunday 02 December, 2019',
                      narration: 'Mobile Money Transaction',
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  void _showQuickServicesSettings(BuildContext context) {
    showModalBottomSheet(
      context: context,
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      builder: (ctx) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10))),
            height: MediaQuery.of(context).size.height * 0.7,
            child: Center(
              child: Text('Welcome to Quick services bottom sheet'),
            ),
          ),
        );
      },
    );
  }
}
