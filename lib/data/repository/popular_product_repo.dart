import 'package:ecommapp/data/api/api_client.dart';
import 'package:ecommapp/utils/app_constants.dart';
import 'package:get/get.dart';

class PopularProductRepo extends GetxService {
  final ApiClient apiClient;
  PopularProductRepo({required this.apiClient});

  Future<Response> getPopularProductList() async{
    return await apiClient.getData(AppConstants.POPUPAR_PRODUCT_URL);

  }


}
