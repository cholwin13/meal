import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
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

    result.fold((error) {
      emit(ReceiptListFailState(error.toString()));
    }, (data) {
      emit(ReceiptListSuccessState(data));
    });
  }

}

