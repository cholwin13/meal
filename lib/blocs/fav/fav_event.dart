part of 'fav_bloc.dart';

abstract class FavEvent extends Equatable{
  const FavEvent();
}

class AddFavEvent extends FavEvent {
  final ReceiptResponse receipt;

  const AddFavEvent(this.receipt);

  @override
  List<Object?> get props => [receipt];
}

class RemoveFavEvent extends FavEvent {
  final ReceiptResponse receipt;

  const RemoveFavEvent(this.receipt);

  @override
  List<Object?> get props => [receipt];
}