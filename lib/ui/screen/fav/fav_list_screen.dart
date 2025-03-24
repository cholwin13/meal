import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal/blocs/fav/fav_bloc.dart';

import '../../widget/receipt_list_widget.dart';

class FavouriteListScreen extends StatefulWidget {
  const FavouriteListScreen({super.key});

  @override
  State<FavouriteListScreen> createState() => _FavouriteListScreenState();
}

class _FavouriteListScreenState extends State<FavouriteListScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavBloc, FavState>(
      builder: (context, state) {
        return ReceiptListWidget(listData: state.favoriteList);
      },
    );
  }
}

