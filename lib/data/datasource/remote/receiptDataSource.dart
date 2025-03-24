import 'dart:io';

import 'package:dio/dio.dart';

import '../../../core/error/error_handler.dart';
import '../../../network/api_service.dart';
import '../../modals/receipt/receipt_response.dart';

abstract class ReceiptListDataSource{
  Future<List<ReceiptResponse>> getRecipesInfoBulks(String ids, bool includeNutrition);
}

class ReceiptListDataSourceImpl extends ReceiptListDataSource{
  final ApiService apiService;

  ReceiptListDataSourceImpl(this.apiService);

  @override
  Future<List<ReceiptResponse>> getRecipesInfoBulks(String ids, bool includeNutrition) async{
    try{
      var httpResponse = await apiService.getRecipesInfoBulks(ids, includeNutrition);
      return httpResponse.data;
    }on DioException catch(error){
      throw ErrorHandler.dioException(error);
    } catch (e){
      throw ErrorHandler.otherException();
    }
  }
}