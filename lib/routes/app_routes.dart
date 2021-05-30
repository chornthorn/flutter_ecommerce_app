import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flavor/views/screens/accounts/account_screen.dart';
import 'package:flutter_flavor/views/screens/accounts/add_book_address_page.dart';
import 'package:flutter_flavor/views/screens/accounts/add_gift_voucher_page.dart';
import 'package:flutter_flavor/views/screens/accounts/add_gift_voucher_page_2.dart';
import 'package:flutter_flavor/views/screens/accounts/add_payment_page.dart';
import 'package:flutter_flavor/views/screens/accounts/add_payment_page_2.dart';
import 'package:flutter_flavor/views/screens/accounts/gitf_voucher_page.dart';
import 'package:flutter_flavor/views/screens/accounts/my_details_page.dart';
import 'package:flutter_flavor/views/screens/accounts/my_order_page.dart';
import 'package:flutter_flavor/views/screens/accounts/notification_page.dart';
import 'package:flutter_flavor/views/screens/accounts/setting_page.dart';
import 'package:flutter_flavor/views/screens/home/components/new_trend_page.dart';
import 'package:flutter_flavor/views/screens/home/components/price_filter_page.dart';
import 'package:flutter_flavor/views/screens/home/components/product_filter_page.dart';
import 'package:flutter_flavor/views/screens/home/home_screen.dart';
import 'package:flutter_flavor/views/screens/main_screen.dart';
import 'package:flutter_flavor/views/screens/onboards/onboard_screen.dart';
import 'package:flutter_flavor/views/screens/search/search_screen.dart';
import 'package:flutter_flavor/views/screens/signup/signup_screen.dart';

Route generateRoute(RouteSettings routeSettings) {
  final args = routeSettings.arguments;

  switch (routeSettings.name) {
    case '/':
      return pageRoute(OnboardScreen());
    case '/main':
      return pageRoute(MainScreen());
    case '/sign_up':
      return pageRoute(SignUpScreen());
    case '/home':
      return pageRoute(HomeScreen());
    case '/new_trend':
      return pageRoute(NewTrendPage());
    case '/product_filter':
      return pageRoute(ProductFilterPage());
    case '/price_filter':
      return pageRoute(PriceFilterPage());
    case '/search_page':
      return pageRoute(SearchScreen());
    case '/account':
      return pageRoute(AccountScreen());
    case '/my_order':
      return pageRoute(MyOrderPage());
    case '/my_details':
      return pageRoute(MyDetailsPage());
    case '/add_book_address':
      return pageRoute(AddBookAddressPage());
    case '/setting':
      return pageRoute(SettingPage());
    case '/notifications':
      return pageRoute(NotificationsPage());
    case '/gift_voucher':
      return pageRoute(GiftVoucherPage());
    case '/add_gift_voucher_page':
      return pageRoute(AddGiftVoucherPage());
    case '/add_gift_voucher_page_2':
      return pageRoute(AddGiftVoucherPage2());
    case '/add_payment':
      return pageRoute(AddPaymentPage());
    case '/add_payment_2':
      return pageRoute(AddPaymentPage2());
  }

  return generateRoute(routeSettings);
}

Route pageRoute(Widget child) {
  return PageRouteBuilder<void>(
    pageBuilder: (context, animation, secondaryAnimation) => child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return SharedAxisTransition(
        animation: animation,
        secondaryAnimation: secondaryAnimation,
        transitionType: SharedAxisTransitionType.scaled,
        child: child,
      );
    },
  );
}
