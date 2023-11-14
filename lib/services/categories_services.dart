import 'package:store/helper/api.dart';
import 'package:store/models/product_model.dart';

class CategoriesService {
  Future<List<ProductModel>> getCategoriesProducts(
      {required String categoryName}) async {
    List<dynamic> data = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/$categoryName');
    List<ProductModel> productsInCategoryList = [];

    for (int i = 0; i < data.length; i++) {
      productsInCategoryList.add(
        ProductModel.fromJson(data[i]),
      );
    }
    return productsInCategoryList;
  }
}
