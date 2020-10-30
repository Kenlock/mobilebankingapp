import 'package:flutter/material.dart';

class TransactionSummaryCard extends StatelessWidget {
  final String amount;
  final String type;
  final String date;
  final String narration;
  final VoidCallback onPressed;

  const TransactionSummaryCard(
      {Key key,
      @required this.amount,
      @required this.type,
      @required this.date,
      @required this.narration,
      @required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed(),
      child: Material(
        elevation: 3,
        borderRadius: BorderRadius.circular(10),
        color: type == 'credit' ? Colors.teal : Colors.redAccent,
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Container(
            padding: const EdgeInsets.all(5),
            height: 70,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            narration,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            softWrap: true,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            date,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 5),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Text(
                      amount,
                      textAlign: TextAlign.end,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
