import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal/blocs/fav/fav_bloc.dart';
import 'package:meal/resources/dimens.dart';
import 'package:meal/resources/routes.dart';

import '../../domain/entities/receipt_entity.dart';

class ReceiptListWidget extends StatefulWidget {
  final List<ReceiptEntity> listData;
  const ReceiptListWidget({super.key, required this.listData});

  @override
  State<ReceiptListWidget> createState() => _ReceiptListWidgetState();
}

class _ReceiptListWidgetState extends State<ReceiptListWidget> {
  String _searchQuery = '';
  late List<ReceiptEntity> filteredList;

  @override
  void initState() {
    super.initState();
    filteredList = widget.listData;
  }

  void _updateSearchResults(String query) {
    setState(() {
      _searchQuery = query;
      filteredList = widget.listData
          .where((item) =>
      item.title?.toLowerCase().contains(_searchQuery.toLowerCase()) ??
          false)
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: TextField(
            onChanged: _updateSearchResults,
            decoration: InputDecoration(
              hintText: 'Search recipes...',
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),

        Expanded(
          child: ListView.builder(
            // itemCount: widget.listData.length,
            itemCount: filteredList.length,
            itemBuilder: (context, index) {
              // final item = widget.listData[index];
              final item = filteredList[index];
              final favoriteBloc = context.read<FavBloc>();

              return GestureDetector(
                onTap: () {
                  goRouter.push(Routes.detailsScreen.path, extra: item);
                },
                child: Card(
                  margin: const EdgeInsets.symmetric(
                      horizontal: kMarginCardMedium_2, vertical: kMarginSmall_2),
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: kMarginMedium_2, horizontal: kMarginCardMedium_2),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(
                            item.image ??
                                "https://spoonacular.com/recipeImages/716429-556x370.jpg",
                            width: kMarginExtraLarge_3,
                            height: kMarginExtraLarge_1,
                            fit: BoxFit.fill,
                            errorBuilder: (context, error, stackTrace) => Icon(
                              Icons.image_not_supported,
                              size: 60,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        const SizedBox(width: kMarginCardMedium_2),
                        Expanded(
                          flex: 5,
                          child: Stack(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item.title ?? "",
                                    style: const TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: textRegular2X,
                                    ),
                                  ),
                                  const SizedBox(height: kMarginSmall_2),
                                  Text(
                                    "${item.extendedIngredients?.length ?? 0} ingredients",
                                    style:
                                        const TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        Expanded(child: BlocBuilder<FavBloc, FavState>(
                          builder: (context, state) {
                            bool isFav = state.favoriteList.contains(item);

                            return IconButton(
                              icon: Icon(
                                isFav ? Icons.favorite : Icons.favorite_border,
                                color: isFav ? Colors.red : Colors.grey,
                              ),
                              onPressed: () {
                                favoriteBloc.add(
                                  isFav
                                      ? RemoveFavEvent(item)
                                      : AddFavEvent(item),
                                );
                              },
                            );
                          },
                        ))
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
