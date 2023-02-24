import 'models/recipe.dart';
import 'recipe_page.dart';
import 'package:flutter/material.dart';

class RecipeCard extends StatelessWidget {
  final List<Recipe> recipes;
  final int index;

  const RecipeCard(
    this.recipes,
    this.index, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // // my stuff
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RecipePage(
              recipes,
              index,
            ),
          ),
        );
      },
      child: Container(
        alignment: Alignment.center,
        // height: 200,
        // width: 200,
        // tileColor: _items[index].isOdd ? oddItemColor : evenItemColor,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          // color: _items[index].isOdd ? oddItemColor : evenItemColor,
          color: Colors.black,
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5),
              BlendMode.dstATop,
            ),
            image: NetworkImage(
              recipes[index].imageURL,
            ),
            fit: BoxFit.cover,
          ),
          // image: Image.network(recipes[index].imageURL),
        ),
        // child: Text('Item $index'),
        // child: Image.network(recipes[index].imageURL),
        child: Stack(
          alignment: Alignment.center,
          children: [
            // recipe name
            Positioned(
              left: 5,
              bottom: 30,
              child: Text(
                recipes[index].recipeName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            // favourite
            Positioned(
              right: 5,
              top: 5,
              child: Icon(
                recipes[index].isFavourite
                    ? Icons.favorite
                    : Icons.favorite_border,
                color: Colors.red,
              ),
            ),
            // recipe author
            Positioned(
              left: 5,
              top: 5,
              child: Text(
                recipes[index].recipeAuthor,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            // cooking time (string)
            Positioned(
              left: 5,
              bottom: 5,
              child: Row(
                children: [
                  const Icon(
                    Icons.access_time,
                    color: Colors.white,
                  ),
                  Text(
                    recipes[index].cookingTime,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                    ),
                  ),
                ],
              ),
            ),
            // amountOfIngredients
            Positioned(
              bottom: 5,
              child: Row(
                children: [
                  const Icon(
                    Icons.shopping_bag,
                    color: Colors.white,
                  ),
                  Text(
                    recipes[index].amountOfIngredients,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                    ),
                  ),
                ],
              ),
            ),
            // recipe difficulty
            Positioned(
              right: 5,
              bottom: 5,
              child: Row(
                children: [
                  const Icon(
                    Icons.help,
                    color: Colors.white,
                  ),
                  Text(
                    recipes[index].recipeDifficulty,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 8,
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
