import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:mobilebanking/business_logic/models/nav_item.dart';
import 'package:mobilebanking/business_logic/models/user.dart';
import 'package:mobilebanking/utils/urls.dart';

class MyDrawer extends StatelessWidget {
  User authUser = User(
      accountNumber: '5011010175592005',
      username: 'etoretornam',
      firstname: 'Anyidoho',
      lastname: 'Etornam',
      email: 'etornamanyidoho@outlook.com');

  Color primary = Colors.white;
  Color active = Colors.grey.shade800;
  Color divider = Colors.grey.shade600;
  String imageUrl = 'assets/images/user-profile.jpg';

  List<NavItem> navItems = [
    NavItem(
      title: 'Home',
      icon: CommunityMaterialIcons.home_outline,
      route: HOME_ROUTE,
    ),
    NavItem(
      title: 'My Accounts',
      icon: CommunityMaterialIcons.wallet_outline,
      route: MY_ACCOUNTS_ROUTE,
    ),
    NavItem(
      title: 'Loans',
      icon: Icons.card_travel,
      route: LOANS_ROUTE,
    ),
    NavItem(
      title: 'Term Deposits',
      icon: CommunityMaterialIcons.folder_account_outline,
      route: TERM_DEPOSITS_ROUTE,
    ),
    NavItem(
      title: 'Transfers',
      icon: CommunityMaterialIcons.send,
      route: TRANSFERS_ROUTE,
    ),
    NavItem(
      title: 'Card Services',
      icon: Icons.credit_card,
      route: CARD_SERVICES_ROUTE,
    ),
    NavItem(
      title: 'Bill Payments',
      icon: Icons.payment,
      route: BILL_PAYMENTS_ROUTE,
    ),
    NavItem(
      title: 'Cheques',
      icon: Icons.card_membership,
      route: CHEQUES_ROUTE,
    ),
    NavItem(
      title: 'Forex Rates',
      icon: CommunityMaterialIcons.currency_eur,
      route: FOREX_RATES_ROUTE,
    ),
    NavItem(
      title: 'Settings',
      icon: Icons.settings,
      route: SETTINGS_ROUTE,
    ),
    NavItem(
      title: 'Customer Service',
      icon: CommunityMaterialIcons.face_agent,
      route: CUSTOMER_SERVICE_ROUTE,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: OvalRightBorderClipper(),
      child: Drawer(
        child: Container(
          padding: const EdgeInsets.only(left: 16, right: 40),
          decoration: BoxDecoration(
            color: primary,
            boxShadow: [BoxShadow(color: Colors.black45)],
          ),
          width: 300,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      icon: Icon(Icons.power_settings_new),
                      color: active,
                      onPressed: () {
                        //Navigator.pushNamed(context, LOGIN_ROUTE);
                        Navigator.pushNamedAndRemoveUntil(
                            context, LOGIN_ROUTE, (route) => false);
                      },
                    ),
                  ),
                  CircularProfileAvatar(
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
                  SizedBox(height: 5),
                  Text(
                    '${authUser.firstname} ${authUser.lastname}',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    '${authUser.email}',
                    style: TextStyle(
                      color: active,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 30.0),
                  for (int i = 0; i < navItems.length; i++)
                    _buildNavItem(
                      context,
                      icon: navItems[i].icon,
                      title: navItems[i].title,
                      route: navItems[i].route,
                    ),
                  SizedBox(height: 20)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(
    BuildContext context, {
    @required IconData icon,
    @required String title,
    @required String route,
    bool showBadge = false,
  }) {
    final TextStyle tStyle = TextStyle(color: active, fontSize: 16.0);
    return GestureDetector(
      onTap: () {
        print('route: $route');
        Navigator.popAndPushNamed(context, route);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  color: active,
                ),
                SizedBox(width: 10.0),
                Text(
                  title,
                  style: tStyle,
                ),
                Spacer(),
                if (showBadge)
                  Material(
                    color: Colors.deepOrange,
                    elevation: 5.0,
                    shadowColor: Colors.red,
                    borderRadius: BorderRadius.circular(5.0),
                    child: Container(
                      width: 25,
                      height: 25,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Text(
                        '10+',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
              ],
            ),
            Divider(
              color: divider,
            ),
          ],
        ),
      ),
    );
  }
}
