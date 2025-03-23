import 'package:equatable/equatable.dart';
import 'package:meal/data/repository/receipt_repository.dart';

import '../../core/usecase/usecase.dart';
import '../../core/utils/typedef.dart';
import '../../data/modals/receipt/receipt_response.dart';
import '../entities/receipt_list_entity.dart';

class ReceiptListUseCase extends UseCaseWithParam<List<ReceiptResponse>, ReceiptListParam>{
  ReceiptRepository receiptRepository;

  ReceiptListUseCase(this.receiptRepository);

  @override
  ResultOfFuture<List<ReceiptResponse>> call(ReceiptListParam param) {
    return receiptRepository.getRecipesInfoBulks(param.ids, param.includeNutrition);
  }
}

class ReceiptListParam extends Equatable{
  final String ids;
  final bool includeNutrition;

  const ReceiptListParam(this.ids, this.includeNutrition);

  @override
  List<Object?> get props => [ids, includeNutrition];
}