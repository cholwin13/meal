import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:meal/domain/usecase/receipt_list_usecase.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

import '../../data/modals/receipt/receipt_response.dart';
import '../../domain/entities/receipt_list_entity.dart';

part 'receipt_event.dart';
part 'receipt_state.dart';

class ReceiptBloc extends Bloc<ReceiptEvent, ReceiptState> {
  ReceiptListUseCase _receiptListUseCase;

  ReceiptBloc(this._receiptListUseCase) : super(ReceiptInitial()) {
    on<ReceiptListListEvent>(_mapReceiptListListEventToState);
  }

  Future<void> _mapReceiptListListEventToState(ReceiptListListEvent event, Emitter emit) async {
    emit(ReceiptListLoadingState());

    final result = await _receiptListUseCase.call(ReceiptListParam(event.ids, event.includeNutrition));

    if (emit.isDone) return;

    await result.fold((error) {
      if (!emit.isDone) return;
      emit(ReceiptListFailState(error.toString()));
    }, (data) async {
      var box = Hive.box<ReceiptResponse>('receiptBox');
      await box.clear();
      // for (var receipt in data) {
      //   await box.add(receipt);
      // }
      for (var receipt in data) {
        if (receipt.image!.isNotEmpty) {
          final imageBytes = await _downloadImage(receipt.image!);
          receipt.imageBytes = imageBytes;
        }

        if (receipt.extendedIngredients != null) {
          for (var ingredient in receipt.extendedIngredients!) {
            if (ingredient.image != null && ingredient.image!.isNotEmpty) {
              final imageBytes = await _downloadImage("https://spoonacular.com/cdn/ingredients_100x100/${ingredient.image}");
              ingredient.imageBytes = imageBytes;
            }
          }
        }
        // await box.add(receipt);
        await box.put(receipt.id, receipt);
      }

      if (!emit.isDone) return;
      emit(ReceiptListSuccessState(data));
    });
  }

  Future<Uint8List?> _downloadImage(String imageUrl) async {
    if (imageUrl.isEmpty) return null;

    try {
      final response = await http.get(Uri.parse(imageUrl));
      if (response.statusCode == 200) {
        return response.bodyBytes;
      }
    } catch (e) {
      print('Image download failed: $e');
    }
    return null;
  }

}

