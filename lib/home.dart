import 'package:flutter/material.dart';
import 'package:swiggy_app/Account.dart';
import 'package:swiggy_app/CarouselWithDotPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> imgList = [
    'https://img.freepik.com/free-psd/fast-food-restaurant-banner-template_23-2148987500.jpg?w=1060&t=st=1684823723~exp=1684824323~hmac=580ad4a4abe99cebe494ba298ebac55c0e70cc70a0082aab6d8cdefd6168409e',
    'https://img.freepik.com/free-psd/delicious-burger-food-menu-facebook-cover-template_106176-722.jpg?w=1380&t=st=1684823969~exp=1684824569~hmac=dd520cb5313f88312c1f29d89877aec0bdd16748c50d1f7779fbea0aaab5e309',
    'https://img.freepik.com/free-psd/fast-food-restaurant-banner-template_23-2148987500.jpg?w=1060&t=st=1684823723~exp=1684824323~hmac=https://img.freepik.com/free-vector/gradient-indian-restaurant-sale-banner_23-2149440854.jpg?w=1060&t=st=1684823925~exp=1684824525~hmac=efcfef7c5183e855ed88d7f3a153aff117373ffabce1a460beafeade12e0214c',
    'https://img.freepik.com/free-vector/flat-design-tasty-brunch-sale-background_23-2149202133.jpg?w=1060&t=st=1684823880~exp=1684824480~hmac=2a61830cbeca67b66adf1f394528a8032a3b5c7b5347cbe38b7900d50063511c',
  ];
  List<String> images = [
    'Assets/image1.jpg',
    'Assets/image2.jpg',
    'Assets/image3.jpg',
    'Assets/image4.jpg',
    'Assets/image5.jpg',
    'Assets/image6.jpg',
  ];

  String getImagePath(int index) {
    if (index < images.length) {
      return images[index];
    } else {
      // If index exceeds the available images, return a default image path or handle the case accordingly
      return 'Assets/image.jpg';
    }
  }

  List<String> texts = [
    'Ente\n Kada',
    'Avante\n Kada',
    'Ninte\n Kada',
    'Mattavante\n kada',
    'Ivante\n Kada'
  ];
  String getTextPath(int index) {
    if (index < texts.length) {
      return texts[index];
    } else {
      return 'hello';
    }
  }

  bool isDarkMode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: isDarkMode ? Colors.black : Colors.white,
        title: Text(
          "Other",
          style: TextStyle(
              color: isDarkMode
                  ? Colors.white
                  : Colors.black), // Change text color here
        ),
        iconTheme: IconThemeData(
            color: isDarkMode
                ? Colors.white
                : Colors.black), // Change icon color here
        actions: [
          InkWell(
            onTap: () {
              setState(() {
                isDarkMode = !isDarkMode; // Toggle the dark mode state
              });
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => const HomePage3()));
            },
            child: Icon(
              Icons.brightness_medium,
              color: isDarkMode ? Colors.white : Colors.black,
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                isDarkMode = !isDarkMode; // Toggle the dark mode state
              });
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => const HomePage3()));
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0, right: 15, left: 10),
              child: Text(
                "Dark Mode",
                style: TextStyle(
                    color: isDarkMode ? Colors.white : Colors.black,
                    fontSize: 20),
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Color.fromARGB(255, 255, 96, 0)),
              child: Text('Home'),
            ),
            const ListTile(
              leading: Icon(Icons.contact_emergency),
              title: Text('Contact'),
            ),
            const ListTile(
              leading: Icon(Icons.help_outline),
              title: Text('Help'),
            ),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
            ListTile(
              leading: const Icon(Icons.login),
              title: const Text("Account"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AccountPage()));
              },
            )
          ],
        ),
      ),

      //body part

      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 5),

            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Text(
                "We are now delivering food groceries and other essentials.",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Text(
                "Food & Genie service (Mon-Sat) - 6:00 am to 9:00 pm. Groceries & Meat (Mon-Sat) - 6:00 am to 6:00 pm. Dairy (Mon-Sat) - 6:00 am to 6:00 pm (Sun) - 6:00 am to 12:00 pm",
                style: TextStyle(
                  fontSize: 16,
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            //*****************box ******************/
            const SizedBox(height: 10),
            Container(
              width: 380,
              height: 180,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 94, 0),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 20, bottom: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Restaurants",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "No-contact delivery available",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 60),
                          Row(
                            children: [
                              Text(
                                "View all",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 10),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 30,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 73,
                    backgroundImage: AssetImage("Assets/image.jpg"),
                  ),
                ],
              ),
            ),

            //**************** 3 boxes*********************//
            const SizedBox(height: 20),
            Stack(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(width: 10),
                    Column(
                      children: [
                        Container(
                          width: 118,
                          height: 150,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage('Assets/image1.jpg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 255, 94, 0),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10)),
                                  ),
                                  child: const Text(
                                    "        Genie       ",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                            width: 100,
                            height: 50,
                            child: Text(
                              "Anything you need, delivered",
                              style: TextStyle(
                                fontSize: 11,
                                color: isDarkMode ? Colors.white : Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            )),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Column(
                      children: [
                        Container(
                          width: 118,
                          height: 150,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage('Assets/image2.jpg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 255, 94, 0),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10)),
                                  ),
                                  child: const Text(
                                    "      Grocery     ",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                            width: 100,
                            height: 50,
                            child: Text("Essentials delivered in 2 Hrs",
                                style: TextStyle(
                                  fontSize: 11,
                                  color:
                                      isDarkMode ? Colors.white : Colors.black,
                                ),
                                textAlign: TextAlign.center)),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Column(
                      children: [
                        Container(
                          width: 118,
                          height: 150,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage('Assets/image3.jpg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 255, 94, 0),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10)),
                                  ),
                                  child: const Text(
                                    "         Meat       ",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                            width: 100,
                            height: 50,
                            child: Text("Fresh meat delivered safe",
                                style: TextStyle(
                                  fontSize: 11,
                                  color:
                                      isDarkMode ? Colors.white : Colors.black,
                                ),
                                textAlign: TextAlign.center)),
                      ],
                    ),
                  ],
                ),
              ],
            ),

            //************* list ***************** */
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Icon(
                    Icons.thumb_up,
                    color: isDarkMode ? Colors.white : Colors.black,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Top Picks For You",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: isDarkMode ? Colors.white : Colors.black,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 200,
              child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext contex, index) {
                    String imagePath = getImagePath(index);
                    String textPath = getTextPath(index);
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0, left: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(imagePath),
                                fit: BoxFit.cover,
                              ),
                            ),
                            width: 118,
                            height: 150,
                          ),
                        ),
                        Text(textPath),
                      ],
                    );
                  }),
            ),

            const SizedBox(
              height: 20,
            ),

            /********************* banner ******************* */
            CarouselWithDotsPage(imgList: imgList),

            const SizedBox(
              height: 20,
            ),

            /*****************    6 images *****************/
            Container(
              height: 10,
              color: const Color.fromARGB(255, 213, 212, 212),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 400,
              height: 150,
              color: isDarkMode ? Colors.black : Colors.white,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage('Assets/image6.jpg'),
                          radius: 50,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Center(
                            child: Text(
                          "South Indian",
                          style: TextStyle(
                            color: isDarkMode ? Colors.white : Colors.black,
                          ),
                        )),
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage('Assets/image7.jpg'),
                          radius: 50,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "North Indian",
                          style: TextStyle(
                            color: isDarkMode ? Colors.white : Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage('Assets/image5.jpg'),
                          radius: 50,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Chinese",
                          style: TextStyle(
                            color: isDarkMode ? Colors.white : Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage('Assets/image9.jpg'),
                          radius: 50,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Italian",
                          style: TextStyle(
                            color: isDarkMode ? Colors.white : Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage('Assets/image10.jpg'),
                          radius: 50,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Mexican",
                          style: TextStyle(
                            color: isDarkMode ? Colors.white : Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage('Assets/image8.jpg'),
                          radius: 50,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "French",
                          style: TextStyle(
                            color: isDarkMode ? Colors.white : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 0,
            ),
            Container(
              height: 10,
              color: const Color.fromARGB(255, 213, 212, 212),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              width: 500,
              color: isDarkMode ? Colors.black : Colors.white,
              child: Column(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.shopping_basket,
                          color: isDarkMode ? Colors.white : Colors.black,
                        ),
                        Text(
                          "  In the Spotlight!",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: isDarkMode ? Colors.white : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 160),
                    child: Text(
                      "Explore sponsored partner brands",
                      style: TextStyle(
                        color: isDarkMode ? Colors.white : Colors.black,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            /************** 4 boxes *************************** */
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                color: isDarkMode ? Colors.black : Colors.white,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 300,
                            height: 100,
                            color: isDarkMode ? Colors.black : Colors.white,
                            child: Row(
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('Assets/image1.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 2.0, left: 8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Breakfast Express",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: isDarkMode
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      ),
                                      Text(
                                        "Continental North Indian,",
                                        style: TextStyle(
                                            color: isDarkMode
                                                ? Colors.white
                                                : Colors.black,
                                            fontSize: 15),
                                      ),
                                      Text(
                                        "South Indian",
                                        style: TextStyle(
                                          color: isDarkMode
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      ),
                                      const SizedBox(height: 25),
                                      const Text(
                                        "₹ offer",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 300,
                            height: 100,
                            color: isDarkMode ? Colors.black : Colors.white,
                            child: Row(
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('Assets/image.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 2.0, left: 8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Breakfast Express",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: isDarkMode
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      ),
                                      Text(
                                        "Continental North Indian,",
                                        style: TextStyle(
                                            color: isDarkMode
                                                ? Colors.white
                                                : Colors.black,
                                            fontSize: 15),
                                      ),
                                      Text(
                                        "South Indian",
                                        style: TextStyle(
                                          color: isDarkMode
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      ),
                                      const SizedBox(height: 25),
                                      const Text(
                                        "₹ offer",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 300,
                            height: 100,
                            color: isDarkMode ? Colors.black : Colors.white,
                            child: Row(
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('Assets/image3.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 2.0, left: 8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Breakfast Express",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: isDarkMode
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      ),
                                      Text(
                                        "Continental North Indian,",
                                        style: TextStyle(
                                            color: isDarkMode
                                                ? Colors.white
                                                : Colors.black,
                                            fontSize: 15),
                                      ),
                                      Text(
                                        "South Indian",
                                        style: TextStyle(
                                          color: isDarkMode
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      ),
                                      const SizedBox(height: 25),
                                      const Text(
                                        "₹ offer",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 300,
                            height: 100,
                            color: isDarkMode ? Colors.black : Colors.white,
                            child: Row(
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('Assets/image5.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 2.0, left: 8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Breakfast Express",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: isDarkMode
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      ),
                                      Text(
                                        "Continental North Indian,",
                                        style: TextStyle(
                                            color: isDarkMode
                                                ? Colors.white
                                                : Colors.black,
                                            fontSize: 15),
                                      ),
                                      Text(
                                        "South Indian",
                                        style: TextStyle(
                                          color: isDarkMode
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      ),
                                      const SizedBox(height: 25),
                                      const Text(
                                        "₹ offer",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 10,
              color: const Color.fromARGB(255, 213, 212, 212),
            ),
            const SizedBox(
              height: 20,
            ),
            /******************** popular brands *********************** */
            Container(
                height: 60,
                width: 400,
                color: isDarkMode ? Colors.black : Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: isDarkMode ? Colors.white : Colors.black,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text("Popular Brands",
                              style: TextStyle(
                                  color:
                                      isDarkMode ? Colors.white : Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text("Most ordered from around your locality",
                          style: TextStyle(
                            color: isDarkMode ? Colors.white : Colors.black,
                          )),
                    ],
                  ),
                )),
            const SizedBox(height: 20),
            Container(
              width: 400,
              height: 170,
              color: isDarkMode ? Colors.black : Colors.white,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color.fromARGB(255, 255, 125, 3),
                              width: 5.0,
                            ),
                          ),
                          child: const CircleAvatar(
                            radius: 50.0,
                            backgroundImage: AssetImage('Assets/image3.jpg'),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Subway Outlet",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: isDarkMode ? Colors.white : Colors.black,
                          ),
                        ),
                        Text("56 mins",
                            style: TextStyle(
                              color: isDarkMode ? Colors.white : Colors.black,
                            ))
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color.fromARGB(255, 255, 125, 3),
                              width: 5.0,
                            ),
                          ),
                          child: const CircleAvatar(
                            radius: 50.0,
                            backgroundImage: AssetImage('Assets/image6.jpg'),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Red Coffee",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: isDarkMode ? Colors.white : Colors.black,
                          ),
                        ),
                        Text("26 mins",
                            style: TextStyle(
                              color: isDarkMode ? Colors.white : Colors.black,
                            ))
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color.fromARGB(255, 255, 125, 3),
                              width: 5.0,
                            ),
                          ),
                          child: const CircleAvatar(
                            radius: 50.0,
                            backgroundImage: AssetImage('Assets/image7.jpg'),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Beans Kings",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: isDarkMode ? Colors.white : Colors.black,
                          ),
                        ),
                        Text("24 mins",
                            style: TextStyle(
                              color: isDarkMode ? Colors.white : Colors.black,
                            ))
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color.fromARGB(255, 255, 125, 3),
                              width: 5.0,
                            ),
                          ),
                          child: const CircleAvatar(
                            radius: 50.0,
                            backgroundImage: AssetImage('Assets/image8.jpg'),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Food Tails",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: isDarkMode ? Colors.white : Colors.black,
                          ),
                        ),
                        Text("44 mins",
                            style: TextStyle(
                              color: isDarkMode ? Colors.white : Colors.black,
                            ))
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color.fromARGB(255, 255, 125, 3),
                              width: 5.0,
                            ),
                          ),
                          child: const CircleAvatar(
                            radius: 50.0,
                            backgroundImage: AssetImage('Assets/image9.jpg'),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Ken Chicks",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: isDarkMode ? Colors.white : Colors.black,
                          ),
                        ),
                        Text("42 mins",
                            style: TextStyle(
                              color: isDarkMode ? Colors.white : Colors.black,
                            ))
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color.fromARGB(255, 255, 125, 3),
                              width: 5.0,
                            ),
                          ),
                          child: const CircleAvatar(
                            radius: 50.0,
                            backgroundImage: AssetImage('Assets/image.jpg'),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "French",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: isDarkMode ? Colors.white : Colors.black,
                          ),
                        ),
                        Text("22 mins",
                            style: TextStyle(
                              color: isDarkMode ? Colors.white : Colors.black,
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),
            Container(
              height: 10,
              color: const Color.fromARGB(255, 213, 212, 212),
            ),
            Container(
              height: 50,
              color: isDarkMode ? Colors.black : Colors.white,
              child: const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Icon(Icons.arrow_downward,
                          color: Color.fromARGB(255, 255, 111, 0)),
                    ),
                    Text(
                      "SWIGGY's KEY MEASURES TO ENSURE SAFETY",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Icon(Icons.arrow_downward,
                          color: Color.fromARGB(255, 255, 111, 0)),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 150,
                      width: 300,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 200, 1),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: const Color.fromARGB(255, 255, 0, 0),
                          width: 2.0,
                        ),
                      ),
                      child: const Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    "No-contact Delivery",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Have your order dropped of at your door or gate for added safety",
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "Know More",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red),
                                  )
                                ],
                              ),
                            ),
                          ),
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage("Assets/image.jpg"),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 150,
                      width: 300,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 200, 1),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: const Color.fromARGB(255, 255, 0, 0),
                          width: 2.0,
                        ),
                      ),
                      child: const Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    "No-contact Delivery",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Have your order dropped of at your door or gate for added safety",
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "Know More",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red),
                                  )
                                ],
                              ),
                            ),
                          ),
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage("Assets/image.jpg"),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 80,
              width: 500,
              color: isDarkMode ? Colors.black : Colors.white,
              child: Column(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.health_and_safety_outlined,
                          color: isDarkMode ? Colors.white : Colors.black,
                        ),
                        Text(
                          "  Best in Safety",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: isDarkMode ? Colors.white : Colors.black,
                          ),
                        ),
                        const SizedBox(
                          width: 120,
                        ),
                        const Text(
                          "SEE ALL",
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward,
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 130),
                    child: Text(
                      "Restaurants with best safety standards",
                      style: TextStyle(
                        color: isDarkMode ? Colors.white : Colors.black,
                      ),
                    ),
                  )
                ],
              ),
            ),
            /************** 4 boxes *************************** */
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                color: isDarkMode ? Colors.black : Colors.white,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 300,
                            height: 100,
                            color: isDarkMode ? Colors.black : Colors.white,
                            child: Row(
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('Assets/image7.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 2.0, left: 8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Breakfast Express",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: isDarkMode
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      ),
                                      Text(
                                        "Continental North Indian,",
                                        style: TextStyle(
                                            color: isDarkMode
                                                ? Colors.white
                                                : Colors.black,
                                            fontSize: 15),
                                      ),
                                      Text(
                                        "South Indian",
                                        style: TextStyle(
                                          color: isDarkMode
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      ),
                                      const SizedBox(height: 25),
                                      const Text(
                                        "₹ offer",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 300,
                            height: 100,
                            color: isDarkMode ? Colors.black : Colors.white,
                            child: Row(
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('Assets/image8.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 2.0, left: 8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Breakfast Express",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: isDarkMode
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      ),
                                      Text(
                                        "Continental North Indian,",
                                        style: TextStyle(
                                            color: isDarkMode
                                                ? Colors.white
                                                : Colors.black,
                                            fontSize: 15),
                                      ),
                                      Text(
                                        "South Indian",
                                        style: TextStyle(
                                          color: isDarkMode
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      ),
                                      const SizedBox(height: 25),
                                      const Text(
                                        "₹ offer",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 300,
                            height: 100,
                            color: isDarkMode ? Colors.black : Colors.white,
                            child: Row(
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('Assets/image9.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 2.0, left: 8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Breakfast Express",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: isDarkMode
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      ),
                                      Text(
                                        "Continental North Indian,",
                                        style: TextStyle(
                                            color: isDarkMode
                                                ? Colors.white
                                                : Colors.black,
                                            fontSize: 15),
                                      ),
                                      Text(
                                        "South Indian",
                                        style: TextStyle(
                                          color: isDarkMode
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      ),
                                      const SizedBox(height: 25),
                                      const Text(
                                        "₹ offer",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 300,
                            height: 100,
                            color: isDarkMode ? Colors.black : Colors.white,
                            child: Row(
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('Assets/image10.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 2.0, left: 8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Breakfast Express",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: isDarkMode
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      ),
                                      Text(
                                        "Continental North Indian,",
                                        style: TextStyle(
                                            color: isDarkMode
                                                ? Colors.white
                                                : Colors.black,
                                            fontSize: 15),
                                      ),
                                      Text(
                                        "South Indian",
                                        style: TextStyle(
                                          color: isDarkMode
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      ),
                                      const SizedBox(height: 25),
                                      const Text(
                                        "₹ offer",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 10,
              color: const Color.fromARGB(255, 213, 212, 212),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 80,
              width: 500,
              color: isDarkMode ? Colors.black : Colors.white,
              child: Column(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.health_and_safety_outlined,
                          color: isDarkMode ? Colors.white : Colors.black,
                        ),
                        Text(
                          "  Top Offers",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: isDarkMode ? Colors.white : Colors.black,
                          ),
                        ),
                        const SizedBox(
                          width: 160,
                        ),
                        const Text(
                          "SEE ALL",
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward,
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 280),
                    child: Text(
                      "Get 20-50% off",
                      style: TextStyle(
                        color: isDarkMode ? Colors.white : Colors.black,
                      ),
                    ),
                  )
                ],
              ),
            ),
            /************** 4 boxes *************************** */
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                color: isDarkMode ? Colors.black : Colors.white,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 300,
                            height: 100,
                            color: isDarkMode ? Colors.black : Colors.white,
                            child: Row(
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('Assets/image1.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 2.0, left: 8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Breakfast Express",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: isDarkMode
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      ),
                                      Text(
                                        "Continental North Indian,",
                                        style: TextStyle(
                                            color: isDarkMode
                                                ? Colors.white
                                                : Colors.black,
                                            fontSize: 15),
                                      ),
                                      Text(
                                        "South Indian",
                                        style: TextStyle(
                                          color: isDarkMode
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      ),
                                      const SizedBox(height: 25),
                                      const Text(
                                        "₹ offer",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 300,
                            height: 100,
                            color: isDarkMode ? Colors.black : Colors.white,
                            child: Row(
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('Assets/image12.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 2.0, left: 8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Breakfast Express",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: isDarkMode
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      ),
                                      Text(
                                        "Continental North Indian,",
                                        style: TextStyle(
                                            color: isDarkMode
                                                ? Colors.white
                                                : Colors.black,
                                            fontSize: 15),
                                      ),
                                      Text(
                                        "South Indian",
                                        style: TextStyle(
                                          color: isDarkMode
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      ),
                                      const SizedBox(height: 25),
                                      const Text(
                                        "₹ offer",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 300,
                            height: 100,
                            color: isDarkMode ? Colors.black : Colors.white,
                            child: Row(
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('Assets/image11.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 2.0, left: 8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Breakfast Express",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: isDarkMode
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      ),
                                      Text(
                                        "Continental North Indian,",
                                        style: TextStyle(
                                            color: isDarkMode
                                                ? Colors.white
                                                : Colors.black,
                                            fontSize: 15),
                                      ),
                                      Text(
                                        "South Indian",
                                        style: TextStyle(
                                          color: isDarkMode
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      ),
                                      const SizedBox(height: 25),
                                      const Text(
                                        "₹ offer",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 300,
                            height: 100,
                            color: isDarkMode ? Colors.black : Colors.white,
                            child: Row(
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('Assets/image8.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 2.0, left: 8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Breakfast Express",
                                        style: TextStyle(
                                            color: isDarkMode
                                                ? Colors.white
                                                : Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Continental North Indian,",
                                        style: TextStyle(
                                            color: isDarkMode
                                                ? Colors.white
                                                : Colors.black,
                                            fontSize: 15),
                                      ),
                                      Text(
                                        "South Indian",
                                        style: TextStyle(
                                          color: isDarkMode
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      ),
                                      const SizedBox(height: 25),
                                      const Text(
                                        "₹ offer",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 10,
              color: const Color.fromARGB(255, 213, 212, 212),
            ),
            Container(
              height: 150,
              width: 500,
              color: isDarkMode ? Colors.black : Colors.white,
              child: Column(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.health_and_safety_outlined,
                          color: isDarkMode ? Colors.white : Colors.black,
                        ),
                        Text(
                          "  Genie",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: isDarkMode ? Colors.white : Colors.black,
                          ),
                        ),
                        const SizedBox(
                          width: 200,
                        ),
                        const Text(
                          "SEE ALL",
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward,
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 140, left: 10),
                    child: Text(
                      "Anything you need delivered.Pick-up.Drop or Buy anything from anywhere in your city.",
                      style: TextStyle(
                        color: isDarkMode ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 10,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 213, 212, 212),
                        width: 1.0,
                        style: BorderStyle.solid,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 252, 227, 9),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: const Color.fromARGB(255, 255, 0, 0),
                          width: 2.0,
                        ),
                      ),
                      child: const Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    "Buy Anything",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Stationey Medicine Grocery & more",
                                  ),
                                  SizedBox(
                                    height: 14,
                                  ),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                          radius: 14,
                                          backgroundColor: Colors.red,
                                          child: Icon(Icons.navigate_next)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 80.0),
                            child: CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage("Assets/scooter.png"),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 252, 227, 9),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: const Color.fromARGB(255, 255, 0, 0),
                          width: 2.0,
                        ),
                      ),
                      child: const Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    "Buy Anything",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Stationey Medicine Grocery & more",
                                  ),
                                  SizedBox(
                                    height: 14,
                                  ),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                          radius: 14,
                                          backgroundColor: Colors.red,
                                          child: Icon(Icons.navigate_next)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 80.0),
                            child: CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage("Assets/scooter.png"),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 10,
              color: const Color.fromARGB(255, 213, 212, 212),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Popular Categories',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: isDarkMode ? Colors.white : Colors.black,
                    ),
                  ),
                  const SizedBox(height: 10),
                  LimitedBox(
                    maxHeight: 124.0,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) => Container(
                          margin: const EdgeInsets.all(10.0),
                          width: 70.0,
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(5.0),
                                child: Container(
                                  height: 50.0,
                                  color: Colors.grey[200],
                                ),
                              ),
                              Positioned(
                                top: 20.0,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Image.asset(
                                      getImagePath(index),
                                      height: 40.0,
                                      width: 40.0,
                                      fit: BoxFit.cover,
                                    ),
                                    Text(
                                      getTextPath(index),
                                      maxLines: 2,
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 10,
              color: const Color.fromARGB(255, 213, 212, 212),
            ),

            /******************* popular restaurants ******************** */
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Popular Categories',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: isDarkMode ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(right: 80.0),
                child: Container(
                  color: isDarkMode
                      ? const Color.fromARGB(255, 8, 8, 8)
                      : Colors.white,
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 300,
                              height: 100,
                              color: isDarkMode ? Colors.black : Colors.white,
                              child: Row(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('Assets/image1.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 2.0, left: 8),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Breakfast Express",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: isDarkMode
                                                ? Colors.white
                                                : Colors.black,
                                          ),
                                        ),
                                        Text(
                                          "Continental North Indian,",
                                          style: TextStyle(
                                            color: isDarkMode
                                                ? Colors.white
                                                : Colors.black,
                                            fontSize: 15,
                                          ),
                                        ),
                                        Text(
                                          "South Indian",
                                          style: TextStyle(
                                            color: isDarkMode
                                                ? Colors.white
                                                : Colors.black,
                                          ),
                                        ),
                                        const SizedBox(height: 25),
                                        const Text(
                                          "₹ offer",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 300,
                              height: 100,
                              color: isDarkMode ? Colors.black : Colors.white,
                              child: Row(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('Assets/image.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 2.0, left: 8),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Breakfast Express",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: isDarkMode
                                                ? Colors.white
                                                : Colors.black,
                                          ),
                                        ),
                                        Text(
                                          "Continental North Indian,",
                                          style: TextStyle(
                                            color: isDarkMode
                                                ? Colors.white
                                                : Colors.black,
                                            fontSize: 15,
                                          ),
                                        ),
                                        Text(
                                          "South Indian",
                                          style: TextStyle(
                                            color: isDarkMode
                                                ? Colors.white
                                                : Colors.black,
                                          ),
                                        ),
                                        const SizedBox(height: 25),
                                        const Text(
                                          "₹ offer",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 300,
                              height: 100,
                              color: isDarkMode ? Colors.black : Colors.white,
                              child: Row(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('Assets/image3.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 2.0, left: 8),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Breakfast Express",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: isDarkMode
                                                ? Colors.white
                                                : Colors.black,
                                          ),
                                        ),
                                        Text(
                                          "Continental North Indian,",
                                          style: TextStyle(
                                            color: isDarkMode
                                                ? Colors.white
                                                : Colors.black,
                                            fontSize: 15,
                                          ),
                                        ),
                                        Text(
                                          "South Indian",
                                          style: TextStyle(
                                            color: isDarkMode
                                                ? Colors.white
                                                : Colors.black,
                                          ),
                                        ),
                                        const SizedBox(height: 25),
                                        const Text(
                                          "₹ offer",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 300,
                              height: 100,
                              color: isDarkMode ? Colors.black : Colors.white,
                              child: Row(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('Assets/image5.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 2.0, left: 8),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Breakfast Express",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: isDarkMode
                                                ? Colors.white
                                                : Colors.black,
                                          ),
                                        ),
                                        Text(
                                          "Continental North Indian,",
                                          style: TextStyle(
                                            color: isDarkMode
                                                ? Colors.white
                                                : Colors.black,
                                            fontSize: 15,
                                          ),
                                        ),
                                        Text(
                                          "South Indian",
                                          style: TextStyle(
                                            color: isDarkMode
                                                ? Colors.white
                                                : Colors.black,
                                          ),
                                        ),
                                        const SizedBox(height: 25),
                                        const Text(
                                          "₹ offer",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 300,
                              height: 100,
                              color: isDarkMode ? Colors.black : Colors.white,
                              child: Row(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('Assets/image3.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 2.0, left: 8),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Breakfast Express",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: isDarkMode
                                                ? Colors.white
                                                : Colors.black,
                                          ),
                                        ),
                                        Text(
                                          "Continental North Indian,",
                                          style: TextStyle(
                                            color: isDarkMode
                                                ? Colors.white
                                                : Colors.black,
                                            fontSize: 15,
                                          ),
                                        ),
                                        Text(
                                          "South Indian",
                                          style: TextStyle(
                                            color: isDarkMode
                                                ? Colors.white
                                                : Colors.black,
                                          ),
                                        ),
                                        const SizedBox(height: 25),
                                        const Text(
                                          "₹ offer",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 300,
                              height: 100,
                              color: isDarkMode ? Colors.black : Colors.white,
                              child: Row(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('Assets/image5.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 2.0, left: 8),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Breakfast Express",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: isDarkMode
                                                ? Colors.white
                                                : Colors.black,
                                          ),
                                        ),
                                        Text(
                                          "Continental North Indian,",
                                          style: TextStyle(
                                            color: isDarkMode
                                                ? Colors.white
                                                : Colors.black,
                                            fontSize: 15,
                                          ),
                                        ),
                                        Text(
                                          "South Indian",
                                          style: TextStyle(
                                            color: isDarkMode
                                                ? Colors.white
                                                : Colors.black,
                                          ),
                                        ),
                                        const SizedBox(height: 25),
                                        const Text(
                                          "₹ offer",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 300,
                              height: 100,
                              color: isDarkMode ? Colors.black : Colors.white,
                              child: Row(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('Assets/image3.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 2.0, left: 8),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Breakfast Express",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: isDarkMode
                                                ? Colors.white
                                                : Colors.black,
                                          ),
                                        ),
                                        Text(
                                          "Continental North Indian,",
                                          style: TextStyle(
                                            color: isDarkMode
                                                ? Colors.white
                                                : Colors.black,
                                            fontSize: 15,
                                          ),
                                        ),
                                        Text(
                                          "South Indian",
                                          style: TextStyle(
                                            color: isDarkMode
                                                ? Colors.white
                                                : Colors.black,
                                          ),
                                        ),
                                        const SizedBox(height: 25),
                                        const Text(
                                          "₹ offer",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 300,
                              height: 100,
                              color: isDarkMode ? Colors.black : Colors.white,
                              child: Row(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('Assets/image5.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 2.0, left: 8),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Breakfast Express",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: isDarkMode
                                                ? Colors.white
                                                : Colors.black,
                                          ),
                                        ),
                                        Text(
                                          "Continental North Indian,",
                                          style: TextStyle(
                                            color: isDarkMode
                                                ? Colors.white
                                                : Colors.black,
                                            fontSize: 15,
                                          ),
                                        ),
                                        Text(
                                          "South Indian",
                                          style: TextStyle(
                                            color: isDarkMode
                                                ? Colors.white
                                                : Colors.black,
                                          ),
                                        ),
                                        const SizedBox(height: 25),
                                        const Text(
                                          "₹ offer",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
