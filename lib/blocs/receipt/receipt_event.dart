part of 'receipt_bloc.dart';

sealed class ReceiptEvent extends Equatable{}

class ReceiptListListEvent extends ReceiptEvent{
  final String ids;
  final bool includeNutrition;

  ReceiptListListEvent(this.ids, this.includeNutrition);

  @override
  List<Object?> get props => [ids, includeNutrition];
}
