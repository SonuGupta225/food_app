import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/components/restaurants.dart';
import 'package:food_app/constats/colors.dart';
import 'package:food_app/constats/constants.dart';
import 'package:food_app/dashboard/home_screen.dart';
import 'package:food_app/models/pandaPickitemModel.dart';

// let start from here
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final weidth = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        title: Text(
          'Kolkata City',
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(45),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Container(
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      colors: <Color>[Colors.redAccent, Colors.orangeAccent]),
                  borderRadius: BorderRadius.circular(50)),
              height: 50,
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search any items ',
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Icon(
                      Icons.search,
                      color: Color(0xff7b7b7b),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(Icons.shopping_bag_outlined),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
                decoration: BoxDecoration(color: MyColors.primaryColor),
                child: CircleAvatar(
                  radius: 24,
                  backgroundImage: NetworkImage(
                      'https://www.koimoi.com/wp-content/new-galleries/2022/08/one-nation-one-emotion-one-identity-says-mahesh-babu-01.jpg'),
                )),
            ListTile(
              title: Text(
                'Setting',
                style: TextStyle(fontFamily: Medium, color: Colors.black),
              ),
              leading: Icon(Icons.settings_outlined),
            ),
            ListTile(
              title: Text(
                'Help center',
                style: TextStyle(fontFamily: Medium, color: Colors.black),
              ),
              leading: Icon(Icons.help_outline),
            ),
            ListTile(
              title: Text(
                'More',
                style: TextStyle(fontFamily: Medium, color: Colors.black),
              ),
              leading: Icon(Icons.more_horiz),
            ),
            ListTile(
              title: Text(
                'Sign up or Login in',
                style: TextStyle(fontFamily: Medium, color: Colors.black),
              ),
              leading: Icon(Icons.login_outlined),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Container(
                    height: height * .17,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: MyColors.primaryColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Image(
                          fit: BoxFit.fitWidth,
                          width: double.infinity,
                          image: NetworkImage(
                              'https://w0.peakpx.com/wallpaper/503/156/HD-wallpaper-meal-rice-breakfast-comida-dish-fireplace-food-healthy-tasty.jpg'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Pizza delivery',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: Bold,
                                    fontSize: 18),
                              ),
                              Text(
                                'Order from your faviruite\n Pizza any time order',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: Bold,
                                    fontSize: 18),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: height * .23,
                        decoration: BoxDecoration(
                            color: Color(0xfffed271),
                            // image: DecorationImage(
                            // image: AssetImage('assets/pizza1.jpg')),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Stack(
                          alignment: Alignment.center,
                          children: [
                            CircleAvatar(
                              radius: 45,
                              backgroundImage: AssetImage('assets/chicken.jpg'),
                            ),
                            Positioned(
                              bottom: 20,
                              left: 8,
                              child: Text(
                                'Chicken',
                                style: TextStyle(
                                    color: blackColor,
                                    fontFamily: Bold,
                                    fontSize: 18),
                              ),
                            ),
                            Positioned(
                              bottom: 5,
                              left: 8,
                              child: Text(
                                'Chicken for 20 %of',
                                style: TextStyle(
                                    color: blackColor,
                                    fontFamily: Medium,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: height * .12,
                            decoration: BoxDecoration(
                                color: Color(0xffef9fc4),
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                    'assets/pizza1.jpg',
                                  ),
                                )),
                            child: const Stack(children: [
                              Positioned(
                                bottom: 18,
                                left: 5,
                                child: Text(
                                  'Food',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: Bold,
                                      fontSize: 18),
                                ),
                              ),
                              Positioned(
                                bottom: 5,
                                left: 5,
                                child: Text(
                                  'Food for 20 %of',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: Medium,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15),
                                ),
                              ),
                            ]),
                          ),
                          SizedBox(height: 5),
                          Container(
                            height: height * .1,
                            decoration: BoxDecoration(
                              color: Color(0xffef9fc4),
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  'assets/pizza2.jpg',
                                ),
                              ),
                            ),
                            child: const Stack(children: [
                              Positioned(
                                bottom: 18,
                                left: 5,
                                child: Text(
                                  'Shops',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: Bold,
                                      fontSize: 18),
                                ),
                              ),
                              Positioned(
                                bottom: 5,
                                left: 5,
                                child: Text(
                                  'Everyday assentials',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: Medium,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15),
                                ),
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ))
                  ],
                ),
              ),
              const Text(
                'Your daily deals',
                style: TextStyle(
                    fontSize: 18, color: blackColor, fontFamily: Bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: Container(
                  height: height * .278,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: PandaPickHelper.itemCount,
                      itemBuilder: (context, index) {
                        // var model = PandaPickHelper.getStatusItem(index);
                        PandaPickItemModel model =
                            PandaPickHelper.getStatusItem(index);
                        return RestaurantsScreen(
                            name: model.name,
                            remainingTime: model.remainingTime,
                            image: model.image,
                            deliveryPrice: model.deliveryPrice,
                            rating: model.rating,
                            totalRating: model.totalRating,
                            deliveryTime: model.remainingTime,
                            subTitle: model.subTitle);
                      }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


// as we have already created model 
//so i am picking up the length of list and data

// we are going to create compnent as we are using this list again  and again 