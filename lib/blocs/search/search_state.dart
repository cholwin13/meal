part of 'search_bloc.dart';

@immutable
// sealed class SearchState {}
//
// final class SearchInitial extends SearchState {}

class SearchState extends Equatable {
  final List<ReceiptEntity> filteredList;
  final String searchQuery;
  final bool isInitialLoad;

  const SearchState({
    this.filteredList = const [],
    this.searchQuery = '',
    this.isInitialLoad = true,
  });

  SearchState copyWith({
    List<ReceiptEntity>? filteredList,
    String? searchQuery,
    bool? isInitialLoad,
  }) {
    return SearchState(
      filteredList: filteredList ?? this.filteredList,
      searchQuery: searchQuery ?? this.searchQuery,
      isInitialLoad: isInitialLoad ?? this.isInitialLoad,
    );
  }

  @override
  List<Object> get props => [filteredList, searchQuery, isInitialLoad];
}
