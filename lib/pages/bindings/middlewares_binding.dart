import 'package:get/get.dart';

class MiddlewaresBinding extends GetMiddleware {
  //executado logo antes da chamada da pagina
  @override
  List<Bindings>? onBindingsStart(List<Bindings>? bindings) {
    print('onBindingsStart $onBindingsStart');
    // bindings?.add(BindingsBuilder.put(() =>'Novo Bnding'));

    return super.onBindingsStart(bindings);
  }

  //é executado logo depois dos bindings serem executados
  @override
  GetPageBuilder? onPageBuildStart(GetPageBuilder? page) {
    print('onPageBuildStart $onPageBuildStart');
    return super.onPageBuildStart(page);
  }
}
