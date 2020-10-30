import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:mobilebanking/utils/urls.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  SwiperController _swiperController = SwiperController();
  int _currentIndex = 0;
  final List<ScreenItem> screenItems = [
    ScreenItem(
      title: 'My Accounts',
      subTitle: 'View Accounts and transaction history',
      backgroundColor: Colors.teal,
      imageUrl: "assets/images/intro1.png",
    ),
    ScreenItem(
      title: 'Fund Transfer',
      subTitle: 'Send money to loved ones anywhere',
      backgroundColor: Colors.indigo,
      imageUrl: "assets/images/intro2.png",
    ),
    ScreenItem(
      title: 'Utility Payment',
      subTitle: 'Utility Bills payment made much easier!',
      backgroundColor: Colors.blue,
      imageUrl: "assets/images/intro3.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Swiper(
            controller: _swiperController,
            loop: false,
            itemCount: screenItems.length,
            index: _currentIndex,
            onIndexChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            pagination: SwiperPagination(
                builder: DotSwiperPaginationBuilder(
                    activeColor: Colors.red, activeSize: 20.0)),
            itemBuilder: (context, index) {
              return IntroItem(
                title: screenItems[index].title,
                subTitle: screenItems[index].subTitle,
                backgroundColor: screenItems[index].backgroundColor,
                imageUrl: screenItems[index].imageUrl,
              );
            },
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: FlatButton(
              child: Text('Skip'),
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, LOGIN_ROUTE, (route) => false);
                //Navigator.popUntil(context, ModalRoute.withName(LOGIN_ROUTE));
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: IconButton(
              icon:
                  Icon(_currentIndex == 2 ? Icons.check : Icons.arrow_forward),
              onPressed: () {
                if (_currentIndex != 2) {
                  _swiperController.next();
                } else {
                  Navigator.pushNamedAndRemoveUntil(
                      context, LOGIN_ROUTE, (route) => false);
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

class IntroItem extends StatelessWidget {
  final String title;
  final String subTitle;
  final Color backgroundColor;
  final String imageUrl;

  const IntroItem(
      {Key key,
      @required this.title,
      this.subTitle,
      this.backgroundColor,
      this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor ?? Theme.of(context).primaryColor,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35.0,
                    color: Colors.white),
              ),
              if (subTitle != null) ...[
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  subTitle,
                  style: TextStyle(color: Colors.white, fontSize: 24.0),
                  textAlign: TextAlign.center,
                ),
              ],
              const SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: Container(
                    margin: const EdgeInsets.only(bottom: 70.0),
                    height: 200,
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Material(
                        elevation: 4.0,
                        child: Image.asset(
                          imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ScreenItem {
  final String title;
  final String subTitle;
  final Color backgroundColor;
  final String imageUrl;

  const ScreenItem(
      {@required this.title,
      this.subTitle,
      this.backgroundColor,
      this.imageUrl})
      : super();
}
