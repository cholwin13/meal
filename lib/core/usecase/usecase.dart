import '../utils/typedef.dart';

abstract class UseCaseWithParam<Type, Param> {
  ResultOfFuture<Type> call(Param param);
}

abstract class UseCaseWithoutParam<Type>{
  ResultOfFuture<Type> call();
}