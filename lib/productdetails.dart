import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  Map<String, dynamic> product;
  List<Map<String, dynamic>> cartList;

  ProductDetail(this.product,this.cartList);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  bool isFavourite = false;
  var borderindex = 0;
  bool fulltext = false;
  var imageindex = 0;
  var addedtocart = false;
  @override
  Widget build(BuildContext context) {
    var maxline = fulltext ? null : 4;
    var longnamelist = widget.product['longname'].split('^');
    List colorlist = widget.product['colors'];
    List imagelist = widget.product['image'];
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 25, left: 15, bottom: 15, right: 15),
              child: Row(
                children: [
                  InkWell(
                      onTap: () => Navigator.of(context).pop(),
                      child: Icon(Icons.arrow_back)),
                  Expanded(child: Container()),
                  InkWell(
                    onTap: () {
                      setState(() {
                        isFavourite = !isFavourite;
                      });
                    },
                    child: Icon(
                        isFavourite ? Icons.favorite : Icons.favorite_border,
                        color: isFavourite ? Colors.red : Colors.black),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: CarouselSlider(
                items: imagelist.map(
                  (e) {
                    return Builder(
                      builder: (context) {
                        return Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(e),
                              fit: BoxFit.fitHeight,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        );
                      },
                    );
                  },
                ).toList(),
                options: CarouselOptions(
                  height: MediaQuery.of(context).size.height * 0.5,
                  aspectRatio: MediaQuery.of(context).size.width /
                      MediaQuery.of(context).size.height *
                      0.5,
                  enlargeCenterPage: true,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  onPageChanged: (index, reason) {
                    setState(() {
                      imageindex = index;
                    });
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 10,
                width: 70,
                child: ListView.builder(
                  itemCount: imagelist.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 4, right: 4),
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          color: index == imageindex ? Colors.blue : Colors.grey,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(35.0),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 5,
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                longnamelist[0],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                longnamelist[1],
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Colors",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 40,
                                child: ListView.builder(
                                  itemCount: colorlist.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    Color bordercolor = Colors.grey;
                                    if (borderindex == index) {
                                      bordercolor = Colors.black;
                                      ;
                                    }
                                    return InkWell(
                                      onTap: () {
                                        setState(() {
                                          borderindex = index;
                                        });
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.only(right: 15),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            boxShadow: List.filled(
                                              colorlist.length,
                                              BoxShadow(
                                                color: Colors.black12,
                                                blurRadius: 5,
                                                blurStyle: BlurStyle.outer,
                                              ),
                                            ),
                                            border:
                                                Border.all(color: bordercolor),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 15,
                                                left: 15,
                                                bottom: 10,
                                                top: 10),
                                            child: Row(
                                              children: [
                                                Container(
                                                  width: 18,
                                                  height: 20,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      color: colorlist[index]
                                                          ['code']),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 10),
                                                  child: Text(colorlist[index]
                                                      ['colorname']),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Description",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                widget.product['Description'],
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13,
                                ),
                                maxLines: maxline,
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    fulltext = !fulltext;
                                  });
                                },
                                child: Row(
                                  children: [
                                    Text(
                                      fulltext
                                          ? "Brief descriprtion "
                                          : "Full descriprtion ",
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 36, 96, 168),
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: Color.fromARGB(255, 36, 96, 168),
                                      size: 14,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          child: Column(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Total",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        widget.product['price'],
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(255, 36, 96, 168),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      if(addedtocart!=true){
                                        widget.cartList.add(widget.product);
                                      }
                                      addedtocart = true;
                                    });
                                  },
                                  child: Container(
                                    child: Center(
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width * 0.8,
                                        height: MediaQuery.of(context).size.height *
                                            0.1,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Color.fromARGB(255, 36, 96, 168),
                                        ),
                                        child: Center(
                                          child: Text(addedtocart?"item Added to basket":"Add to basket",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
