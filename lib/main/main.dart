import 'package:exercise/main/factories/page/register/register_page_factory.dart';
import 'package:exercise/main/routes.dart';
import 'package:exercise/ui/components/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'factories/page/home/home_page_factory.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(new App());
  });
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: makeAppTheme(),
      initialRoute: Routes.HOME,
      getPages: [
        GetPage(name: Routes.HOME, page: makeHomePage),
        GetPage(name: Routes.REGISTER, page: makeRegisterPage),
      ],
    );
  }
}
