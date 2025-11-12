import 'package:flutter/material.dart';

class Splashscree extends StatefulWidget {
  const Splashscree({super.key});

  @override
  State<Splashscree> createState() => _SplashscreeState();
}

class _SplashscreeState extends State<Splashscree> {


  List<Map<String, dynamic>> userList = [
    {
      "name": "Injamam",
      "phone": "01619960331",
      "image": "assets/image/injamam.png", // র‍্যান্ডম ছবি
    },
    {
      "name": "Thohin",
      "phone": "01619960331",
      "image": "assets/image/thohin.jpg",
    },
    {
      "name": "Shawon",
      "phone": "01919960331",
      "image": "assets/image/shawon.jpg",
    },
    {
      "name": "Bhaia",
      "phone": "01919960331",
      "image": "assets/image/bhaia.jpg",
    },
    {
      "name": "Monir",
      "phone": "01619960331",
      "image": "assets/image/monir.jpg",
    },{
      "name": "Rasel",
      "phone": "01745678765",
      "image": "assets/image/rasel.jpg",
    },{
      "name": "sagar",
      "phone": "01619956",
      "image": "assets/image/sagar.jpg",
    },{
      "name": "Shawon",
      "phone": "01967890",
      "image": "assets/image/shawon.jpg",
    }, {
      "name": "Injamam",
      "phone": "01619960331",
      "image": "assets/image/injamam.png", // র‍্যান্ডম ছবি
    },
    {
      "name": "Thohin",
      "phone": "01619960331",
      "image": "assets/image/thohin.jpg",
    },
    {
      "name": "Shawon",
      "phone": "01919960331",
      "image": "assets/image/shawon.jpg",
    },
    {
      "name": "Bhaia",
      "phone": "01919960331",
      "image": "assets/image/bhaia.jpg",
    },
    {
      "name": "Monir",
      "phone": "01619960331",
      "image": "assets/image/monir.jpg",
    },{
      "name": "Rasel",
      "phone": "01745678765",
      "image": "assets/image/rasel.jpg",
    },{
      "name": "sagar",
      "phone": "01619956",
      "image": "assets/image/sagar.jpg",
    },{
      "name": "Shawon",
      "phone": "01967890",
      "image": "assets/image/shawon.jpg",
    },{
      "name": "Injamam",
      "phone": "01619960331",
      "image": "assets/image/injamam.png", // র‍্যান্ডম ছবি
    },
    {
      "name": "Thohin",
      "phone": "01619960331",
      "image": "assets/image/thohin.jpg",
    },
    {
      "name": "Shawon",
      "phone": "01919960331",
      "image": "assets/image/shawon.jpg",
    },
    {
      "name": "Bhaia",
      "phone": "01919960331",
      "image": "assets/image/bhaia.jpg",
    },
    {
      "name": "Monir",
      "phone": "01619960331",
      "image": "assets/image/monir.jpg",
    },{
      "name": "Rasel",
      "phone": "01745678765",
      "image": "assets/image/rasel.jpg",
    },{
      "name": "sagar",
      "phone": "01619956",
      "image": "assets/image/sagar.jpg",
    },{
      "name": "Shawon",
      "phone": "01967890",
      "image": "assets/image/shawon.jpg",
    },
    {
      "name": "Injamam",
      "phone": "234567890",
      "image": "assets/image/injamam.png",
    },
    {
      "name": "Injamam",
      "phone": "234567890",
      "image": "assets/image/injamam.png", // র‍্যান্ডম ছবি
    }, {
      "name": "Injamam",
      "phone": "234567890",
      "image": "assets/image/injamam.png", // র‍্যান্ডম ছবি
    }, {
      "name": "Injamam",
      "phone": "234567890",
      "image": "assets/image/injamam.png", // র‍্যান্ডম ছবি
    },
    // আরও যোগ করুন...
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 100,
            floating: true,
            pinned: false,
            snap: true,
            backgroundColor: Colors.blue,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("My Favorite"),
              //background: Image.asset("assets/header.jpg", fit: BoxFit.cover),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Text("Welcome!", style: TextStyle(fontSize: 24)),
            ),
          ),

          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                final user = userList[index];
                return Card(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  child: ListTile(
                    // leading: ছবি
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(user["image"]),
                      radius: 22,
                    ),
                    // title
                    title: Text(
                      user["name"],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    // subtitle
                    subtitle: Text(user["phone"]),
                    trailing: Icon(Icons.arrow_forward_ios, size: 16),
                  ),
                );
              },
              childCount: userList.length,
            ),
          ),

        ],
      ),
      bottomNavigationBar: Row(

        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          Container(
            height:50,
            width:409,
            decoration: BoxDecoration(
              color: Colors.cyan,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.home),
                Icon(Icons.home_outlined),
                Icon(Icons.search),
                Icon(Icons.preview),
                Icon(Icons.person_add),
              ],

            ),
          )

        ],
      ),

    );
  }
}

