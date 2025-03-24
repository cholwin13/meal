import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:meal/domain/usecase/receipt_list_usecase.dart';
import 'package:meta/meta.dart';

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
      for (var receipt in data) {
        await box.add(receipt);
      }

      if (!emit.isDone) return;
      emit(ReceiptListSuccessState(data));
    });
  }

}

