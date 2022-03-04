import 'package:get/get.dart';
import 'package:movieapp/app/data/movie_models.dart';
import 'package:movieapp/app/service/movie_service.dart';

class HomeController extends GetxController with StateMixin<List<dynamic>> {
  //TODO: Implement HomeController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    MovieService().fetchMovie().then((value) {
      change(value, status: RxStatus.success());
    }, onError: (err) {
      change(null, status: RxStatus.error());
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
