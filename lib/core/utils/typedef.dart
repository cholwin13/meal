import 'package:dartz/dartz.dart';

import '../error/error_handler.dart';

typedef ResultOfFuture<T> = Future<Either<ErrorHandler, T>>;