part of 'receipt_bloc.dart';

sealed class ReceiptState extends Equatable{}

final class ReceiptInitial extends ReceiptState {
  @override
  List<Object?> get props => [];
}

class ReceiptListLoadingState extends ReceiptState{
  @override
  List<Object?> get props => [];
}

class ReceiptListFailState extends ReceiptState{
  final String message;

  ReceiptListFailState(this.message);

  @override
  List<Object?> get props => [message];
}

class ReceiptListSuccessState extends ReceiptState{
  final List<ReceiptResponse> data;

  ReceiptListSuccessState(this.data);

  @override
  List<Object?> get props => [data];
}