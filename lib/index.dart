import 'package:flutter/material.dart';
import 'package:flutter_flavor/routes/app_routes.dart';
import 'package:flutter_flavor/utils/theme.dart';
import 'package:flutter_flavor/views/widgets/flavor_banner.dart';

class AppIndex extends StatelessWidget {
  const AppIndex({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlavorBanner(
      child: Listener(
        onPointerDown: (_) {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus &&
              currentFocus.focusedChild != null) {
            currentFocus.focusedChild.unfocus();
          }
        },
        child: MaterialApp(
          debugShowCheckedModeBanner: true,
          initialRoute: '/',
          onGenerateRoute: generateRoute,
          theme: myTheme,
        ),
      ),
    );
  }
}
