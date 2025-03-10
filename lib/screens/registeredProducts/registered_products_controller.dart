import 'package:compass/models/product_model.dart';
import 'package:compass/utils/api_services.dart';
import 'package:compass/utils/constants.dart';
import 'package:compass/utils/token_verification.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class RegisteredProductsController extends GetxController {
  // RxInt filterMonths = 4.obs;
  final RxInt filterValue = 4.obs;

  // get all products
  Future<List<ProductModel>> getFilteredProduct(int months) async {
    String? token = await localStorageServices.getFromLocal("token");

    if (token == null) {
      tokenDialog();
      return [];
    }
    return await getFiltered(token, months);
  }

// get filtered products
  Future<List<ProductModel>> getProducts() async {
    String? token = await localStorageServices.getFromLocal("token");

    if (token == null) {
      tokenDialog();
      return [];
    }

    return await getRegisteredProducts(token);
    // try {
    //   String url = "${api}products/expiringIn/${filterValue.value.toString()}";
    //
    //   // final request = http.Request("GET", Uri.parse(url));
    //   // request.headers.addAll()
    //
    //   final response = await http
    //       .get(Uri.parse(url), headers: {"Content-Type": "application/json"});
    //
    //
    //   if (response.statusCode != 200) {
    //     print("Server error");
    //     // print(response.body.toString());
    //   }
    //
    //   final List responseBody = jsonDecode(response.body);
    //   // Obx() {}
    //   return responseBody.map((e) => ProductModel.fromJson(e)).toList();
    // } catch (err) {
    //   print("Error occurred");
    //   return [];
    // }
  }

// //  delete product
  Future<void> deleteProduct(String id) async {
    try {
      String url = "${api}products/deleteBeta/$id";
      final res = await http.get(Uri.parse(url));
      if (res.statusCode != 200) {}
    } catch (err) {}
  }
}
