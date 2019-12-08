import 'package:example/app/modules/home/pages/list/list_widget.dart';
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
    Router("/list", child: (_, args) => ListWidget()),
    Router("/list/1", child: (_, args) => ListWidget(param: "Outro Widget",)),
  ];

  static Inject get to => Inject<HomeModule>.of();

}