import 'package:modular/app/model/price_model.dart';

class CategoryController {
  PriceModel priceModel;
  CategoryController({required this.priceModel}) {
    print('Category Model $hashCode');
  }
}
