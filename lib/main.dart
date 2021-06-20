import 'package:flutter/material.dart';
import 'package:foodapp/contants.dart';
import 'package:foodapp/Meals.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      home: Scaffold(
        bottomNavigationBar: CustomBar(),
        body: SafeArea(child: MyApp()),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RichText(
                      text: TextSpan(children: <InlineSpan>[
                    TextSpan(text: 'Find Your Best \n', style: kGreySmall),
                    TextSpan(text: 'Nutrition Meal', style: kBlackMed),
                  ])),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(55),
                    child: Image.asset(
                      'images/profile.jpg',
                      width: 50,
                      height: 50,
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[200]),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Search Foods',
                            hintStyle: kGreySmall,
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(10)),
                      ),
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: 30,
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.pink[100],
                            borderRadius: BorderRadius.circular(15)),
                        padding:
                            EdgeInsets.symmetric(vertical: 25, horizontal: 25),
                        alignment: Alignment.center,
                        child: Image.asset(
                          'images/donut.png',
                          width: 50,
                          height: 50,
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        'BAKERY',
                        style: kBlackSmall,
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding:
                            EdgeInsets.symmetric(vertical: 25, horizontal: 15),
                        alignment: Alignment.center,
                        child: Image.asset(
                          'images/milk.png',
                          width: 50,
                          height: 50,
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        'DAIRY',
                        style: kBlackSmall,
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.orange[100],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding:
                            EdgeInsets.symmetric(vertical: 25, horizontal: 15),
                        alignment: Alignment.center,
                        child: Image.asset(
                          'images/fish.png',
                          width: 50,
                          height: 50,
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        'SEAFOODS',
                        style: kBlackSmall,
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.red[100],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding:
                            EdgeInsets.symmetric(vertical: 25, horizontal: 15),
                        alignment: Alignment.center,
                        child: Image.asset(
                          'images/fast-food.png',
                          width: 50,
                          height: 50,
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        'SNACKS',
                        style: kBlackSmall,
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: mealsList.length,
              itemBuilder: (context, index) {
                return MealsCard(mealsList[index]);
              }),
        )
      ],
    );
  }
}

class MealsCard extends StatelessWidget {
  const MealsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class CustomBar extends StatefulWidget {
  @override
  _CustomBarState createState() => _CustomBarState();
}

class _CustomBarState extends State<CustomBar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) {
        setState(() {
          currentIndex = index;
        });
      },
      backgroundColor: Colors.pinkAccent[100],
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.black,
      showUnselectedLabels: true,
      items: [
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(
            Icons.home,
            color: Colors.black,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Offers',
          icon: Icon(
            Icons.local_offer_sharp,
            color: Colors.black,
          ),
        ),
        BottomNavigationBarItem(
          label: 'My Orders',
          icon: Icon(
            Icons.shopping_cart,
            color: Colors.black,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Profile',
          icon: Icon(
            Icons.person,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
