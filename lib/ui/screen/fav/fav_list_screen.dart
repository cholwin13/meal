import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal/blocs/fav/fav_bloc.dart';
import 'package:meal/blocs/receipt/receipt_bloc.dart';
import 'package:meal/network/api_service.dart';

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
    // context.read<ReceiptBloc>().add(ReceiptListListEvent("715538", false));
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
