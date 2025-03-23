part of 'search_bloc.dart';

// @immutable
// sealed class SearchEvent {}

class SearchEvent extends Equatable {
  final String query;
  final List<ReceiptEntity> allReceipts;

  const SearchEvent({required this.query, required this.allReceipts});

  @override
  List<Object> get props => [query, allReceipts];
}
