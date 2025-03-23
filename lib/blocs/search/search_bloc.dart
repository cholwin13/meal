import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/receipt_entity.dart';

part 'search_event.dart';
part 'search_state.dart';

// class SearchBloc extends Bloc<SearchEvent, SearchState> {
//   SearchBloc() : super(SearchInitial()) {
//     on<SearchEvent>((event, emit) {
//       // TODO: implement event handler
//     });
//   }
// }

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(const SearchState()) {
    on<SearchEvent>((event, emit) {
      if (event.query.isEmpty) {
        emit(state.copyWith(filteredList: event.allReceipts, isInitialLoad: false));
      } else {
        final filteredList = event.allReceipts
            .where((item) => item.title?.toLowerCase().contains(event.query.toLowerCase()) ?? false)
            .toList();
        emit(state.copyWith(filteredList: filteredList, searchQuery: event.query, isInitialLoad: false));
      }
    });
  }
}