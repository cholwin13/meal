import 'package:flutter/material.dart';
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
  final Map<int, bool> _favorites = {};

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.listData.length,
      itemBuilder: (context, index) {
        final item = widget.listData[index];

        _favorites.putIfAbsent(index, () => false);

        return GestureDetector(
          onTap: () {
            goRouter.push(Routes.detailsScreen.path, extra: item);
          },
          child: Card(
            margin: const EdgeInsets.symmetric(horizontal: kMarginCardMedium_2, vertical: kMarginSmall_2),
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: kMarginMedium_2, horizontal: kMarginCardMedium_2),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      item.image ?? "https://spoonacular.com/recipeImages/716429-556x370.jpg",
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
                    flex: 3,
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
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Positioned(
                          right: 0,
                          top: 0,
                          child: IconButton(
                            icon: Icon(
                              _favorites[index] == true ? Icons.favorite : Icons.favorite_border,
                              color: _favorites[index] == true ? Colors.red : Colors.grey,
                            ),
                            onPressed: () {
                              setState(() {
                                _favorites[index] = !(_favorites[index] ?? false);
                              });
                            },
                          ),
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
    );
  }
}