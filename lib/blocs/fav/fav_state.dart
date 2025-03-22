part of 'fav_bloc.dart';

// abstract class FavState extends Equatable{}
//
// class FavInitialState extends FavState {
//
//   @override
//   List<Object?> get props => [];
// }

class FavState extends Equatable {
  final List<ReceiptEntity> favoriteList;

  const FavState({this.favoriteList = const []});

  @override
  List<Object?> get props => [favoriteList];
}