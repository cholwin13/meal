import 'package:flutter/material.dart';
import 'package:meal/domain/entities/receipt_entity.dart';
import 'package:meal/resources/app_color.dart';

import '../../resources/dimens.dart';

class ReceiptDetailsScreen extends StatelessWidget {
  final ReceiptEntity receipt;
  const ReceiptDetailsScreen({super.key, required this.receipt});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(receipt.title ?? "", style: TextStyle(color: Colors.white),),
          backgroundColor: context.appColors.colorPrimary,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(receipt.image ?? "https://spoonacular.com/recipeImages/716429-556x370.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            TabBar(
              labelColor: context.appColors.colorPrimary,
              unselectedLabelColor: Colors.grey,
              indicatorColor: context.appColors.colorPrimary,
              tabs: const [
                Tab(text: "Ingredients"),
                Tab(text: "Other Info"),
              ],
            ),

            Expanded(
              child: TabBarView(
                children: [
                  // Ingredients Tab
                  ListView.builder(
                    padding: const EdgeInsets.all(kMarginCardMedium_2),
                    itemCount: receipt.extendedIngredients?.length ?? 0,
                    itemBuilder: (context, index) {
                      final ingredient = receipt.extendedIngredients?[index];
                      return Card(
                        child: ListTile(
                          leading: Image.network(
                            "https://spoonacular.com/cdn/ingredients_100x100/${ingredient?.image ?? ""}",
                            width: kMarginLargeX,
                            height: kMarginLargeX,
                            errorBuilder: (context, error, stackTrace) => Icon(Icons.image_not_supported),
                          ),
                          title: Text(ingredient?.aisle ?? ""),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Aisle: ${ingredient?.name ?? ""}"),
                              Text("Amount: ${ingredient?.amount ?? ""}"),
                              Text("Consistency: ${ingredient?.consitency ?? ""}"),
                            ],
                          ),
                        ),
                      );
                    },
                  ),

                  // Other Info Tab
                  Padding(
                    padding: const EdgeInsets.all(kMarginMedium_2),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${receipt.summary != "" ? receipt.summary : ""}",
                            style: TextStyle(fontSize: textRegular),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}