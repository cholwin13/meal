import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meal/blocs/fav/fav_bloc.dart';
import 'package:meal/blocs/receipt/receipt_bloc.dart';
import 'package:meal/blocs/search/search_bloc.dart';
import 'package:meal/core/utils/uint8list_converter.dart';
import 'package:meal/data/modals/receipt/extendedIngredient.dart';
import 'package:meal/data/modals/receipt/measure_vo.dart';
import 'package:meal/data/modals/receipt/metric_vo.dart';
import 'package:meal/data/modals/receipt/receipt_response.dart';
import 'package:meal/resources/routes.dart';

import 'injector.dart';

void main() async {
  await initializeDependencies();

  await Hive.initFlutter();

  Hive.registerAdapter(ReceiptResponseAdapter());
  Hive.registerAdapter(ExtendedIngredientAdapter());
  Hive.registerAdapter(MeasuresVOAdapter());
  Hive.registerAdapter(MetricAdapter());

  await Hive.openBox<ReceiptResponse>('receiptBox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FavBloc(),
        ),
        BlocProvider(
          create: (context) => SearchBloc(),
        ),
        BlocProvider(
          create: (context) => ReceiptBloc(injector()),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: goRouter,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
