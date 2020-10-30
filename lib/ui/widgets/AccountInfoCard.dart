import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';

class AccountInfoCard extends StatelessWidget {
  final String imageUrl;
  final String accountType;
  final String accountName;
  final String currency;
  final double availableBalance;
  final String accountNumber;

  AccountInfoCard({
    @required this.imageUrl,
    @required this.accountType,
    @required this.accountName,
    @required this.currency,
    @required this.availableBalance,
    @required this.accountNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: CircularProfileAvatar(
              null,
              cacheImage: true,
              child: Image.asset(
                imageUrl,
                fit: BoxFit.fill,
              ),
              radius: 50,
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.white,
              borderWidth: 3,
              borderColor: Theme.of(context).primaryColor,
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  child: Text(
                    accountName.toUpperCase(),
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Text(
                    '$currency $availableBalance',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                      color: Colors.teal,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Text(
                    accountType.toUpperCase(),
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13.0,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Text(
                    accountNumber,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13.0,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
