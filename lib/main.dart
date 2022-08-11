import 'package:cinema_app_concept/model/movieModel.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:demoji/demoji.dart';
import 'package:custom_rating_bar/custom_rating_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cinema App Concept UI',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  bool isSelected = false;
  int _currentIndex = 0;

  List<MovieCategories> movieCategory = [
    MovieCategories(Demoji.sunglasses, "Action", true),
    MovieCategories(Demoji.cowboy_hat_face, "Adventure", false),
    MovieCategories(Demoji.heart_eyes, "Romance", false),
    MovieCategories(Demoji.persevere, "Horror", false),
    MovieCategories(Demoji.alien, "Zombie", false),
  ];

  void changePage(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(33, 36, 44, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(33, 36, 44, 1),
        leading: Icon(Icons.menu),
        actions: const [
          Icon(Icons.search_rounded),
          Icon(Icons.notification_important)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Categories",
                  style: TextStyle(color: Colors.white),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    child: ListView.builder(
                      itemCount: movieCategory.length,
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            for (int i = 0; i < movieCategory.length; i++) {
                              if (i == index) {
                                movieCategory[i].selected =
                                    !movieCategory[i].selected;
                              } else if (movieCategory[i].selected) {
                                movieCategory[i].selected = false;
                              }
                            }
                            setState(() {});
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: movieCategory[index].selected
                                          ? Colors.purple
                                          : Colors.grey,
                                      borderRadius: BorderRadius.circular(10)),
                                  width: 100,
                                  height: 40,
                                  child: Row(children: [
                                    Text(movieCategory[index].icon),
                                    Text(
                                      movieCategory[index].category,
                                      style: TextStyle(
                                          color: movieCategory[index].selected
                                              ? Colors.white
                                              : Colors.black),
                                    )
                                  ]),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Row(children: [
                  Text(
                    "Popular",
                    style: TextStyle(color: Colors.white),
                  ),
                  Spacer(),
                  Text(
                    "View all",
                    style: TextStyle(color: Colors.grey),
                  ),
                ]),
                Container(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    width: double.infinity,
                    height: 400,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      children: [
                        Column(
                          children: [
                            Image.network(
                              "https://m.media-amazon.com/images/M/MV5BNTU4YWEzMzMtZGQ0Ny00Y2Q4LTgyZTYtOWVmZjUyZDhjMWYzXkEyXkFqcGdeQXVyMTM0MDY3ODQ3._V1_.jpg",
                              scale: 5,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("One Piece Film Red",
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                            SizedBox(
                              height: 10,
                            ),
                            RatingBar.readOnly(
                              filledIcon: Icons.star,
                              emptyIcon: Icons.star_border,
                              initialRating: 4,
                              maxRating: 5,
                            )
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Image.network(
                              "https://m.media-amazon.com/images/M/MV5BNTU4YWEzMzMtZGQ0Ny00Y2Q4LTgyZTYtOWVmZjUyZDhjMWYzXkEyXkFqcGdeQXVyMTM0MDY3ODQ3._V1_.jpg",
                              scale: 5,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("One Piece Film Red",
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                            SizedBox(
                              height: 10,
                            ),
                            RatingBar.readOnly(
                              filledIcon: Icons.star,
                              emptyIcon: Icons.star_border,
                              initialRating: 4,
                              maxRating: 5,
                            )
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Image.network(
                              "https://m.media-amazon.com/images/M/MV5BNTU4YWEzMzMtZGQ0Ny00Y2Q4LTgyZTYtOWVmZjUyZDhjMWYzXkEyXkFqcGdeQXVyMTM0MDY3ODQ3._V1_.jpg",
                              scale: 5,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("One Piece Film Red",
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                            SizedBox(
                              height: 10,
                            ),
                            RatingBar.readOnly(
                              filledIcon: Icons.star,
                              emptyIcon: Icons.star_border,
                              initialRating: 4,
                              maxRating: 5,
                            )
                          ],
                        ),
                      ],
                    )),
              ]),
        ),
      ),
    bottomNavigationBar: DotNavigationBar(
      enablePaddingAnimation: false,
      itemPadding: EdgeInsets.symmetric(horizontal: 20),
      enableFloatingNavBar: false,
      backgroundColor: Colors.transparent,
        currentIndex: _currentIndex,
        onTap: changePage,
        dotIndicatorColor: Colors.transparent,
        items: [
          /// Home
          DotNavigationBarItem(
              icon: const Icon(Icons.home),
              selectedColor: Colors.brown,
              unselectedColor: Colors.grey[200]),

          /// Likes
          DotNavigationBarItem(
              icon: const Icon(Icons.favorite_border),
              selectedColor: Colors.brown,
              unselectedColor: Colors.grey[200]),

          /// Search
          DotNavigationBarItem(
              icon: const Icon(Icons.search),
              selectedColor: Colors.brown,
              unselectedColor: Colors.grey[200]),

          /// Profile
          DotNavigationBarItem(
              icon: const Icon(Icons.person),
              selectedColor: Colors.brown,
              unselectedColor: Colors.grey[200]),
        ],
      ),
    );
    
  }
}
