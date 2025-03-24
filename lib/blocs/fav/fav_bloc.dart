import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../data/modals/receipt/receipt_response.dart';
import '../../domain/entities/receipt_entity.dart';

part 'fav_event.dart';
part 'fav_state.dart';

class FavBloc extends Bloc<FavEvent, FavState> {
  FavBloc() : super(FavState()) {
    on<AddFavEvent>((event, emit) {
      emit(FavState(favoriteList: List.from(state.favoriteList)..add(event.receipt)));
    });

    on<RemoveFavEvent>((event, emit) {
      emit(FavState(favoriteList: List.from(state.favoriteList)..remove(event.receipt)));
    });
  }
}
