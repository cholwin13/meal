import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../core/error/error_handler.dart';
import '../../core/utils/typedef.dart';
import '../../domain/entities/receipt_list_entity.dart';
import '../datasource/remote/receiptDataSource.dart';
import '../modals/receipt/receipt_response.dart';

abstract class ReceiptRepository{
  ResultOfFuture<List<ReceiptResponse>> getRecipesInfoBulks(String ids, bool includeNutrition);
}

class ReceiptRepositoryImpl extends ReceiptRepository{
  ReceiptListDataSource dataSource;

  ReceiptRepositoryImpl(this.dataSource);

  @override
  ResultOfFuture<List<ReceiptResponse>> getRecipesInfoBulks(String ids, bool includeNutrition) async{
    try{
      var receipes = await dataSource.getRecipesInfoBulks(ids, includeNutrition);
      if (receipes.firstOrNull == null){
        return Left(ErrorHandler.serverFailureException("An error has occurred"));
      } else {
        return Right(receipes);
      }
    }on ErrorHandler catch(error){
      return Left(error);
    }on DioException catch(error){
      return Left(ErrorHandler.dioException(error));
    }
  }
}