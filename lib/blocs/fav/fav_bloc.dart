import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../../data/modals/receipt/receipt_response.dart';
import '../../domain/entities/receipt_entity.dart';

part 'fav_event.dart';
part 'fav_state.dart';

// class FavBloc extends Bloc<FavEvent, FavState> {
//   final Box<ReceiptResponse> receiptBox = Hive.box<ReceiptResponse>('receiptBox');
//
//   FavBloc() : super(FavState()) {
//     on<AddFavEvent>((event, emit) {
//       emit(FavState(favoriteList: List.from(state.favoriteList)..add(event.receipt)));
//     });
//
//     on<RemoveFavEvent>((event, emit) {
//       emit(FavState(favoriteList: List.from(state.favoriteList)..remove(event.receipt)));
//     });
//   }
// }

class FavBloc extends Bloc<FavEvent, FavState> {
  final Box<ReceiptResponse> favoriteBox = Hive.box<ReceiptResponse>('favoriteBox');

  FavBloc() : super(FavState()) {
    final initialFavorites = List<ReceiptResponse>.from(favoriteBox.values);
    emit(FavState(favoriteList: initialFavorites));

    on<AddFavEvent>((event, emit) {
      final updatedList = List<ReceiptResponse>.from(state.favoriteList)..add(event.receipt);
      favoriteBox.put(event.receipt.title, event.receipt);
      emit(FavState(favoriteList: updatedList));
    });

    on<RemoveFavEvent>((event, emit) {
      final updatedList = List<ReceiptResponse>.from(state.favoriteList)..remove(event.receipt);
      favoriteBox.delete(event.receipt.title);
      emit(FavState(favoriteList: updatedList));
    });
  }
}
