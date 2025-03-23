import 'dart:ffi';

import 'package:dio/dio.dart';
import 'package:meal/data/modals/receipt/receipt_response.dart';
import 'package:meal/network/api_constants.dart';
import 'package:retrofit/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;

  @GET(endPointGetRecipesInfoBulks)
  Future<HttpResponse<List<ReceiptResponse>>> getRecipesInfoBulks(
      @Query("ids") String ids,
      @Query("includeNutrition") bool includeNutrition,
      );

}
