import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'categorypage.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            FadeInUp(duration: const Duration(milliseconds: 1000), child: Container(
              height: 500,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/tc.jpeg'),
                  fit: BoxFit.cover
                )
              ),
              child: Container(
                 decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.8),
                      Colors.black.withOpacity(.2),
                    ]
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          FadeInUp(duration: const Duration(milliseconds: 1200), child: IconButton(
                            icon: const Icon(Icons.favorite, color: Colors.white,), onPressed: () {},
                          )),
                          FadeInUp(duration: const Duration(milliseconds: 1300), child: IconButton(
                            icon: const Icon(Icons.shopping_cart, color: Colors.white,), onPressed: () {},
                          )),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            FadeInUp(duration: const Duration(milliseconds: 1500), child: const Text("Our New Products", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),)),
                            const SizedBox(height: 15,),
                            FadeInUp(duration: const Duration(milliseconds: 1700), child: const Row(
                              children: <Widget>[
                                Text("VIEW MORE", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
                                SizedBox(width: 5,),
                                Icon(Icons.arrow_forward_ios, color: Colors.white, size: 15,)
                              ],
                            ))
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            )),
            FadeInUp(duration: const Duration(milliseconds: 1400), child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Categories", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
                      Text("All")
                    ],
                  ),
                  const SizedBox(height: 20,),
                  SizedBox(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeCategory(image: 'assets/images/5.jpg', title: 'Habayas', tag: 'Habayas'),
                        makeCategory(image: 'assets/images/imagesx.jpg', title: 'Kanzus', tag: 'Kanzus'),
                        makeCategory(image: 'assets/images/d.jpg', title: 'Dresses', tag: 'Dresses'),
                        makeCategory(image: 'assets/images/kk.jpg', title: 'Jewery', tag: 'Jewery'),
                        makeCategory(image: 'assets/images/bb5.jpg', title: 'Veils', tag: 'Veils'),
                        makeCategory(image: 'assets/images/IMG-20230921-WA0130.jpg', title: '2 piece outfits', tag: '2 piece outfits'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40,),

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Best Selling by Category", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
                      Text("All")
                    ],
                  ),
                  const SizedBox(height: 20,),
                  SizedBox(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeBestCategory(image: 'assets/images/imagesl.jpg', title: 'buttoned habaya'),
                        makeBestCategory(image: 'assets/images/nn.jpg', title: 'wachtes'),
                        makeBestCategory(image: 'assets/images/d.jpg', title: 'plai casual dress'),
                        makeBestCategory(image: 'assets/images/bb5.jpg', title: 'shifon viels'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 80,),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }

  Widget makeCategory({image, title, tag}) {
    return AspectRatio(
      aspectRatio: 2 / 2.2,
      child: Hero(
        tag: tag,
        child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryPage(image: image, title: title, tag: tag,)));
          },
          child: Material(
            child: Container(
              margin: const EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover
                )
              ),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.8),
                      Colors.black.withOpacity(.0),
                    ]
                  )
                ),
                child: 
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),)
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget makeBestCategory({image, title}) {
    return AspectRatio(
      aspectRatio: 3 / 2.2,
      child: Container(
        margin: const EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover
          )
        ),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.0),
              ]
            )
          ),
          child: 
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),)
          ),
        ),
      ),
    );
  }
}