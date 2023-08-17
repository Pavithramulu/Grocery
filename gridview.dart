import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Gridview_Page extends StatelessWidget {
  final List<Map<String, dynamic>> productList = [
    //@audit Product List
    {
      'item': 'Green coffee beans-200g',
      'image': 'assets/category/green-coffee-beans-400x400.jpg',
      'rate': '₹369.00',
    },
    {
      'item': 'CowGhee-325ml',
      'image': 'assets/category/new-project-4-800x800.jpg',
      'rate': '₹490.00',
    },
    {
      'item': 'Coffee powder-200g',
      'image': 'assets/category/36-coffee-powder-400x400.jpg',
      'rate': '₹230.00',
    },
    {
      'item': 'CTC Tea-200g',
      'image': 'assets/category/ctc-tea-400x400.jpg',
      'rate': '₹225.00',
    },
    {
      'item': 'Green Coffee powder-250g',
      'image': 'assets/category/new-project-35-400x400.jpg',
      'rate': '₹395.00',
    },
    {
      'item': 'Chukku kappi-100g',
      'image': 'assets/category/19-chukku-kappi-400x400.jpg',
      'rate': '₹130.00',
    },
    {
      'item': 'A2 Cow Ghee-350ml',
      'image': 'assets/category/01-400x400.jpg',
      'rate': '₹525.00',
    },
    {
      'item': 'Desi Cow Ghee-400ml',
      'image': 'assets/category/44-400x400.jpg',
      'rate': '₹450.00',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(60, 32, 217, 112),
          // backgroundColor: Colors.green.shade900,
          leading: const Icon(Icons.menu),
          title: const SizedBox(
              height: 60,
              child: Image(
                  image: AssetImage(
                'assets/logo.png',
              ))),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                'assets/slider/icon-compare.svg',
                height: 30,
                width: 30,
                allowDrawingOutsideViewBox: true,
              ),
            ), //compare icon
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                'assets/slider/icon-heart.svg',
                height: 30,
                width: 30,
                allowDrawingOutsideViewBox: true,
              ),
            ), //heart icon
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                'assets/slider/icon-cart.svg',
                height: 30,
                width: 30,
                allowDrawingOutsideViewBox: true,
              ),
            ), //cart icon
          ],
        ),
        body: GridView.count(
          crossAxisCount: 2, // Number of columns in the grid

          children: productList.map((product) {
            return GridTile(
              child: Column(
                children: [
                  Container(
                    width: 210,
                    height: 230,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      children: [
                        SizedBox(height: 10.0),
                        Image.asset(
                          product['image'],
                          width: 100,
                          height: 130,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          product['item'],
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 4.0),
                        Text(
                          product['rate'],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.green.shade900),
                        ),
                        SizedBox(height: 4.0),
                        SizedBox(
                          width: 130,
                          height: 30,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff026108),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: () {
                              // ShoppingCart.addToCart(Product(
                              //     productList[index]['item'],
                              //     double.parse(
                              //       productList[index]['rate']
                              //           .replaceAll('₹', ''),
                              //     ),
                              //     productList[index]['image']));
                              // setState(() {
                              //   _cartBadgeAmount++;
                              // });
                              // ScaffoldMessenger.of(context).showSnackBar(
                              //   SnackBar(
                              //     backgroundColor: Color(0xff026108),
                              //     content: Text(
                              //       'Item Added to Cart',
                              //       style: GoogleFonts.ubuntu(
                              //           fontWeight: FontWeight.w600,
                              //           fontSize: 18),
                              //     ),
                              //     duration: Duration(seconds: 2),
                              //   ),
                              // );
                            },
                            child: Text(
                              'Add To Card ',
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
//Groceries//

class Groceries_Page extends StatefulWidget {
  const Groceries_Page({super.key});

  @override
  State<Groceries_Page> createState() => _Groceries_PageState();
}

class _Groceries_PageState extends State<Groceries_Page> {
  final List<Map<String, dynamic>> productList = [
    //@audit Product List
    {
      'item': 'White rice poha-500g',
      'image': 'assets/category/groceries/new-project-17-1-400x400.jpg',
      'rate': '₹70.00 ',
    },
    {
      'item': 'Virgin coconut oil-1L',
      'image': 'assets/category/groceries/new-project-15-1-400x400.jpg',
      'rate': '₹790.00',
    },
    {
      'item': 'Turmeric powder-250G',
      'image': 'assets/category/groceries/new-project-14-1-400x400.jpg',
      'rate': '₹80.00',
    },
    {
      'item': 'Sesame white-100g',
      'image': 'assets/category/groceries/new-project-13-1-400x400.jpg',
      'rate': '₹120.00',
    },
    {
      'item': 'Little millet-500G',
      'image': 'assets/category/groceries/new-project-12-1-400x400.jpg',
      'rate': '₹90.00',
    },
    {
      'item': 'Foxtail millets-500g',
      'image': 'assets/category/groceries/new-project-9-1-400x400.jpg',
      'rate': '₹85.00',
    },
    {
      'item': 'Foxtail millet-400g',
      'image': 'assets/category/groceries/new-project-8-1-400x400.jpg',
      'rate': ' ₹125.00',
    },
    {
      'item': 'Fish Masala-100g ',
      'image': 'assets/category/groceries/fish-masala.jpg',
      'rate': '₹95.00',
    },
    {
      'item': 'Finger millet vermicelli-500 g',
      'image': 'assets/category/groceries/new-project-7-1-400x400.jpg',
      'rate': '₹35.00',
    },
    {
      'item': 'Fennugreek powder-100g',
      'image': 'assets/category/groceries/new-project-6-1-400x400.jpg',
      'rate': '₹40.00',
    },
    {
      'item': 'Desiccated coconut powder-250g',
      'image': 'assets/category/groceries/new-project-5-1-400x400.jpg',
      'rate': '₹300.00',
    },
    {
      'item': 'Cinnamon Powder 100g ',
      'image': 'assets/category/groceries/new-project-4-1-400x400.jpg',
      'rate': '₹90.00',
    },
    {
      'item': 'Cinnamon bark-50g ',
      'image': 'assets/category/groceries/new-project-3-1-400x400.jpg',
      'rate': '₹60.00',
    },
    {
      'item': 'Black cumin seed oil-100ml',
      'image': 'assets/category/groceries/new-project-2-1-400x400.jpg',
      'rate': '₹280.00',
    },
    {
      'item': 'Asafoetida block-50g ',
      'image': 'assets/category/groceries/new-project-1-1-400x400.jpg',
      'rate': '₹90.00',
    },
    {
      'item': 'SunFlower Oil-1L',
      'image': 'assets/category/groceries/sunflower-oil-400x400.jpg',
      'rate': '₹415.00',
    },
    {
      'item': 'Mustard oil-500ml',
      'image': 'assets/category/groceries/mustard-oil-400x400.jpg',
      'rate': '₹365.00',
    },
    {
      'item': 'Green cardamom whole-100g ',
      'image': 'assets/category/groceries/green-cardamom-whole-400x400.jpg',
      'rate': '₹395.00',
    },
    {
      'item': 'Sonamasoori Rice 1Kg',
      'image': 'assets/category/groceries/sonamasoori-rice-400x400.jpg',
      'rate': '₹125.00',
    },
    {
      'item': 'Rice Poha 500g',
      'image': 'assets/category/groceries/rice-poha-400x400.jpg',
      'rate': '₹72.00',
    },
    {
      'item': 'Sugar-1KG',
      'image': 'assets/category/groceries/raw-sugar-800x800.jpg',
      'rate': '₹165.00',
    },
    {
      'item': 'Honey-250g',
      'image': 'assets/category/groceries/raw-honey-400x400.jpg',
      'rate': '₹210.00',
    },
    {
      'item': 'Fennel 500g',
      'image': 'assets/category/groceries/new-project-43-400x400.jpg',
      'rate': '₹70.00',
    },
    {
      'item': 'Cumin 100g',
      'image': 'assets/category/groceries/cumin-whole-400x400.jpg',
      'rate': '₹80.00',
    },
    {
      'item': 'Coriander Whole 250g',
      'image': 'assets/category/groceries/coriandar-400x400.jpg',
      'rate': '₹85.00',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(60, 32, 217, 112),
          // backgroundColor: Colors.green.shade900,
          leading: const Icon(Icons.menu),
          title: const SizedBox(
              height: 60,
              child: Image(
                  image: AssetImage(
                'assets/logo.png',
              ))),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                'assets/slider/icon-compare.svg',
                height: 30,
                width: 30,
                allowDrawingOutsideViewBox: true,
              ),
            ), //compare icon
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                'assets/slider/icon-heart.svg',
                height: 30,
                width: 30,
                allowDrawingOutsideViewBox: true,
              ),
            ), //heart icon
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                'assets/slider/icon-cart.svg',
                height: 30,
                width: 30,
                allowDrawingOutsideViewBox: true,
              ),
            ), //cart icon
          ],
        ),
        body: GridView.count(
          crossAxisCount: 2, // Number of columns in the grid

          children: productList.map((product) {
            return GridTile(
              child: Column(
                children: [
                  Container(
                    width: 210,
                    height: 230,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      children: [
                        SizedBox(height: 10.0),
                        Image.asset(
                          product['image'],
                          width: 100,
                          height: 130,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          product['item'],
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16.0),
                        ),
                        SizedBox(height: 4.0),
                        Text(
                          product['rate'],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.green.shade900),
                        ),
                        SizedBox(height: 4.0),
                        SizedBox(
                          width: 130,
                          height: 30,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff026108),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: () {
                              // ShoppingCart.addToCart(Product(
                              //     productList[index]['item'],
                              //     double.parse(
                              //       productList[index]['rate']
                              //           .replaceAll('₹', ''),
                              //     ),
                              //     productList[index]['image']));
                              // setState(() {
                              //   _cartBadgeAmount++;
                              // });
                              // ScaffoldMessenger.of(context).showSnackBar(
                              //   SnackBar(
                              //     backgroundColor: Color(0xff026108),
                              //     content: Text(
                              //       'Item Added to Cart',
                              //       style: GoogleFonts.ubuntu(
                              //           fontWeight: FontWeight.w600,
                              //           fontSize: 18),
                              //     ),
                              //     duration: Duration(seconds: 2),
                              //   ),
                              // );
                            },
                            child: Text(
                              'Add To Card ',
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
