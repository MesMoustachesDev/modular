import 'package:modular/modular.dart';

import 'home_bloc.dart';
import 'home_widget.dart';

class HomeModule extends CommonModule {
  @override
  List<Bind> get binds => [
    Bind((i) => HomeBloc()),
  ];

  @override
  List<Router> get routers => [
    Router("/", child: (_, args) => HomeWidget()),
    Router("/list", child: (_, args) => HomeWidget()),
  ];

  static Inject get to => Inject<HomeModule>.of();

}