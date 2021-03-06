import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tranlation/app/app_controller.dart';
import 'package:tranlation/app/app_widget.dart';
import 'package:tranlation/app/modules/home/home_module.dart';
import 'package:tranlation/app/modules/splash/splash_page.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind(
          (i) => AppController(),
        )
      ];

  @override
  Widget get bootstrap => AppWidget();

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => SplashPage(),
        transition: TransitionType.noTransition,
        ),
        Router(
          '/home',
          module: HomeModule(),
        ),
      ];
}
