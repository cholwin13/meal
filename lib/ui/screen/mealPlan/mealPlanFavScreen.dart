import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:meal/resources/app_color.dart';

import '../../../blocs/fav/fav_bloc.dart';
import '../../../data/modals/receipt/receipt_response.dart';
import '../../../resources/dimens.dart';

class MealPlanFavScreen extends StatefulWidget {
  @override
  State<MealPlanFavScreen> createState() => _MealPlanFavScreenState();
}

class _MealPlanFavScreenState extends State<MealPlanFavScreen> {
  @override
  Widget build(BuildContext context) {
    final List<String> favoriteItems = [
      'Pizza', 'Burger', 'Pasta', 'Salad',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Select Favorite Meal", style: TextStyle(color: Colors.white)),
        backgroundColor: context.appColors.colorPrimary,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      // body: ListView.builder(
      //   itemCount: favoriteItems.length,
      //   itemBuilder: (context, index) {
      //     return ListTile(
      //       title: Text(favoriteItems[index]),
      //       onTap: () {
      //         Navigator.pop(context, favoriteItems[index]);
      //       },
      //     );
      //   },
      // ),
      body: BlocBuilder<FavBloc, FavState>(
        builder: (context, state) {
          return MealPlanFavWidget(listData: state.favoriteList);
        },
      ),
    );
  }
}

class MealPlanFavWidget extends StatefulWidget {
  final List<ReceiptResponse> listData;
  const MealPlanFavWidget({super.key, required this.listData});

  @override
  State<MealPlanFavWidget> createState() => _ReceiptListWidgetState();
}

class _ReceiptListWidgetState extends State<MealPlanFavWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: widget.listData.length,
            itemBuilder: (context, index) {
              final item = widget.listData[index];

              return GestureDetector(
                onTap: () {
                  Navigator.pop(context, item.title);
                },
                child: Card(
                  margin: EdgeInsets.symmetric(
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
                          child: FutureBuilder<Box<ReceiptResponse>>(
                            future: Hive.openBox<ReceiptResponse>('receiptBox'),
                            builder: (context, snapshot) {
                              if (!snapshot.hasData) {
                                return const CircularProgressIndicator();
                              }

                              final box = snapshot.data!;
                              final receipt = box.get(item.id);

                              if (receipt != null && receipt.imageBytes != null) {
                                return Image.memory(
                                  receipt.imageBytes!,
                                  width: kMarginExtraLarge_3,
                                  height: kMarginExtraLarge_1,
                                  fit: BoxFit.fill,
                                );
                              } else {
                                return Image.network(
                                  item.image ?? "",
                                  width: kMarginExtraLarge_3,
                                  height: kMarginExtraLarge_1,
                                  fit: BoxFit.fill,
                                  errorBuilder: (context, error, stackTrace) => Icon(
                                    Icons.image_not_supported,
                                    size: 55,
                                    color: Colors.grey,
                                  ),
                                );
                              }
                            },
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