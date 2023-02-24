import 'models/recipe.dart';
import 'package:flutter/material.dart';

class RecipePage extends StatelessWidget {
  final List<Recipe> recipes;
  final int index;

  const RecipePage(
    this.recipes,
    this.index, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(recipes[index].recipeName),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(
              recipes[index].isFavourite
                  ? Icons.favorite
                  : Icons.favorite_border,
              color: Colors.red,
            ),
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0),
                color: Colors.black,
                image: DecorationImage(
                  image: NetworkImage(
                    recipes[index].imageURL,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Text(
                          "Author: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        Text(
                          recipes[index].recipeAuthor,
                          style: const TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),

                    // space between
                    const SizedBox(height: 10),

                    // description
                    Column(
                      children: [
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Description: ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            recipes[index].description,
                            style: const TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    // Ingredients
                    Column(
                      children: [
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Ingredients: ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Wrap(
                            spacing: 15.0, // gap between adjacent chips
                            runSpacing: 4.0, // gap between lines
                            children: [
                              for (int i = 0;
                                  i < recipes[index].ingredients.length;
                                  i++)
                                Text(
                                  "${i + 1}. ${recipes[index].ingredients[i]}",
                                  style: const TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    // time to cook
                    Column(
                      children: [
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Time to Cook: ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "${recipes[index].cookTime} mins",
                            style: const TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    // directions
                    Column(
                      children: [
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Directions: ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            children: [
                              for (int i = 0;
                                  i < recipes[index].directions.length;
                                  i++)
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "${i + 1}. ${recipes[index].directions[i]}",
                                    style: const TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // // // SCROLLING WITHOUT IMAGE STAYING
              // body: Column(
              //   children: [
              //     // image
              //     Container(
              //       alignment: Alignment.center,
              //       height: 200,
              //       decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(0),
              //         color: Colors.black,
              //         image: DecorationImage(
              //           image: NetworkImage(
              //             recipes[index].imageURL,
              //           ),
              //           fit: BoxFit.cover,
              //         ),
              //       ),
              //     ),
              //     const SizedBox(height: 10),

              //     // author
              //     Row(
              //       children: [
              //         const Text(
              //           "Author: ",
              //           style: TextStyle(
              //             fontWeight: FontWeight.bold,
              //             fontSize: 25,
              //           ),
              //         ),
              //         Text(
              //           recipes[index].recipeAuthor,
              //           style: const TextStyle(
              //             fontSize: 15,
              //           ),
              //         ),
              //       ],
              //     ),

              //     // space between
              //     const SizedBox(height: 10),

              //     // description
              //     Column(
              //       children: [
              //         const Align(
              //           alignment: Alignment.centerLeft,
              //           child: Text(
              //             "Description: ",
              //             style: TextStyle(
              //               fontWeight: FontWeight.bold,
              //               fontSize: 25,
              //             ),
              //           ),
              //         ),
              //         Align(
              //           alignment: Alignment.centerLeft,
              //           child: Text(
              //             recipes[index].description,
              //             style: const TextStyle(
              //               fontSize: 15,
              //             ),
              //           ),
              //         ),
              //       ],
              //     ),
              //     const SizedBox(height: 10),
              //     // Ingredients
              //     Column(
              //       children: [
              //         const Align(
              //           alignment: Alignment.centerLeft,
              //           child: Text(
              //             "Ingredients: ",
              //             style: TextStyle(
              //               fontWeight: FontWeight.bold,
              //               fontSize: 25,
              //             ),
              //           ),
              //         ),
              //         Align(
              //           alignment: Alignment.centerLeft,
              //           child: Wrap(
              //             spacing: 15.0, // gap between adjacent chips
              //             runSpacing: 4.0, // gap between lines
              //             children: [
              //               for (int i = 0; i < recipes[index].ingredients.length; i++)
              //                 Text(
              //                   "${i + 1}. ${recipes[index].ingredients[i]}",
              //                   style: const TextStyle(
              //                     fontSize: 15,
              //                   ),
              //                 ),
              //             ],
              //           ),
              //         ),
              //       ],
              //     ),
              //     const SizedBox(height: 10),
              //     // time to cook
              //     Column(
              //       children: [
              //         const Align(
              //           alignment: Alignment.centerLeft,
              //           child: Text(
              //             "Time to Cook: ",
              //             style: TextStyle(
              //               fontWeight: FontWeight.bold,
              //               fontSize: 25,
              //             ),
              //           ),
              //         ),
              //         Align(
              //           alignment: Alignment.centerLeft,
              //           child: Text(
              //             "${recipes[index].cookTime} mins",
              //             style: const TextStyle(
              //               fontSize: 15,
              //             ),
              //           ),
              //         ),
              //       ],
              //     ),
              //     const SizedBox(height: 10),
              //     // directions
              //     Column(
              //       children: [
              //         const Align(
              //           alignment: Alignment.centerLeft,
              //           child: Text(
              //             "Directions: ",
              //             style: TextStyle(
              //               fontWeight: FontWeight.bold,
              //               fontSize: 25,
              //             ),
              //           ),
              //         ),
              //         Align(
              //           alignment: Alignment.centerLeft,
              //           child: Column(
              //             children: [
              //               for (int i = 0; i < recipes[index].directions.length; i++)
              //                 Align(
              //                   alignment: Alignment.centerLeft,
              //                   child: Text(
              //                     "${i + 1}. ${recipes[index].directions[i]}",
              //                     style: const TextStyle(
              //                       fontSize: 15,
              //                     ),
              //                   ),
              //                 ),
              //             ],
              //           ),
              //         ),
              //       ],
              //     ),
              //   ],
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
