import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class ErrorHandler implements Exception{
  String _message = "";
  int _errorStatusCode = 0;
  Response? _response;

  ErrorHandler(this._message, this._errorStatusCode);

  ErrorHandler.dioException(DioException error) {
    _handleDioException(error);
  }

  ErrorHandler.otherException() {
    _handleOtherException();
  }

  ErrorHandler.emptyData(String result) {
    _message = result;
  }

  ErrorHandler.serverFailureException(String error) {
    _handleServerFailureException(error);
  }

  _handleOtherException() {
    _message = "Something went wrong";
  }

  _handleServerFailureException(String error){
    _message = error;
  }

  _handleDioException(DioException error){
    _response = error.response;
    _errorStatusCode = error.response?.statusCode ?? 0;

    print("Error Handler --> ${error.type}");
    switch(error.type){
      case DioExceptionType.connectionTimeout:
        _message = "Connection timeout. Please try again later";
        break;

      case DioExceptionType.cancel:
        _message = "Request canceled. Please try again later";
        break;

      case DioExceptionType.receiveTimeout:
        _message = "Received timeout. Please try again later";
        break;

      case DioExceptionType.sendTimeout:
        if(kReleaseMode){
          _message = "Something went wrong. Please try again later";
        }else{
          _message = "Received timeout. Please try again later";
        }
        break;

      case DioExceptionType.badResponse:
        if(error.response?.statusCode == 503){
          _message = "Something went wrong. Please try again later";
        }else if(error.response?.statusCode == 404){
          _message = "Not found. Please try again later";
        }
        else if(error.response?.statusCode != 401){
          _message = handleBadRequest(error.response?.data);
        }else{
          _message = "UnAuthorized error occured. Please try again later";
        }
        break;

      case DioExceptionType.unknown:
        _message = "Unknown error occured. Please try again later";
        break;

      case DioExceptionType.connectionError:
        _message = "No internet detected, please check your connection";
        break;

      default:
        _message = "Something went wrong. Please try again later";
        break;
    }
    // return serverError;
  }

  @override
  String toString() {
    return _message;
  }

  String handleBadRequest(Map<String, dynamic>? errorData) {
    String error = "";
    if (errorData?['error_description'] != null) {
      final message = errorData?['error_description'];
      error = message;
    } else if (errorData?['error'] != null) {
      try {
        final errorObject = errorData?['error'];
        final message = errorObject['message'];
        final dynamic errorTag = message.keys.first; // Extract the first key dynamically
        error = message[errorTag];
      } catch (e) {
        error = errorData?['error']['message'] ?? "";
      }
    } else if (errorData?['errors'] == null && errorData?.entries != null) {
      for (var item in errorData!.entries) {
        error = item.value.toString();
        break;
      }
    } else {
      error = "Something went wrong";
    }

    return error;
  }
}
