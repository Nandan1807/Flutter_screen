import 'package:flutter/material.dart';
import 'package:flutter_screens/productdetails.dart';

class ProductsFound extends StatefulWidget {
  final searchText;
  final cartList;

  ProductsFound(this.searchText,this.cartList);

  @override
  State<ProductsFound> createState() => _ProductsFoundState();
}

class _ProductsFoundState extends State<ProductsFound> {
  List<Map<String, dynamic>> products = [
    {
      "productname": "Ipad Air",
      "longname":
          "Apple 2022 iPad Air M1 Chip^(10.9-inch/27.69 cm, Wi-Fi, 64GB, 5th Generation)",
      "company": "Apple",
      "image": [
        "https://m.media-amazon.com/images/I/71VbHaAqbML._SX679_.jpg",
        "https://m.media-amazon.com/images/I/61ImGCuIWiL._SX679_.jpg",
        "https://m.media-amazon.com/images/I/81ix87lLCpL._SX679_.jpg",
        "https://m.media-amazon.com/images/I/71LZeFKdtbL._SX679_.jpg",
      ],
      "colors": [
        {"colorname": "blue", "code": Colors.blue},
        {"colorname": "purple", "code": Colors.purple},
        {"colorname": "pink", "code": Colors.pink},
      ],
      "Description":
          "27.69 cm (10.9-inch) Liquid Retina display1 with True Tone, P3 wide colour and an anti-reflective coating-Apple M1 chip with Neural Engine-12MP Wide camera 12MP Ultra Wide front camera with Center Stage-Up to 256GB of storage-Available in blue, purple, pink, starlight, and space gray-Stereo landscape speakers-Touch ID for secure authentication-All-day battery life-Works with Magic Keyboard, Smart Keyboard Folio and Apple Pencil (2nd generation)",
      "price": "₹57,999"
    },
    {
      "productname": "Watch",
      "longname":
          "Apple Watch Ultra [GPS + Cellular 49 mm] ^smart watch w/Rugged Titanium Case & Orange Alpine Loop - Small. Fitness Tracker, Precision GPS, Action Button, Extra-Long BatteryLife, Brighter Retina Display",
      "company": "Apple",
      "image": [
        "https://m.media-amazon.com/images/I/51XGrwhczrL._SX300_SY300_QL70_FMwebp_.jpg",
        "https://m.media-amazon.com/images/I/81LNgb-7FnL._SX679_.jpg",
        "https://m.media-amazon.com/images/I/91g08EO6xoL._SX679_.jpg",
        "https://m.media-amazon.com/images/I/81mik1zN55L._SX679_.jpg",
      ],
      "colors": [
        {"colorname": "green", "code": Colors.green},
        {"colorname": "orange", "code": Colors.orange},
        {"colorname": "black", "code": Colors.black},
      ],
      "Description":
          "WHY APPLE WATCH ULTRA — Rugged and capable, built to meet the demands of endurance athletes, outdoor adventurers and water sports enthusiasts — with a specialised strap for each. Up to 36 hours of battery life, plus all the Apple Watch features that help you stay healthy, safe and connected. EXTREMELY RUGGED, INCREDIBLY CAPABLE — 49-millimetre corrosion-resistant titanium case. Larger Digital Crown and more accessible buttons. 100-metre water resistance. Customisable Action button for instant physical control over a variety of functions.",
      "price": "₹79,900"
    },
    {
      "productname": "MacBook Pro",
      "longname":
          "Apple 2022 MacBook Air Laptop ^with M2 chip: 34.46 cm (13.6-inch) Liquid Retina Display, 8GB RAM, 512GB SSD Storage, Backlit Keyboard, 1080p FaceTime HD Camera. Works with iPhone/iPad; Silver",
      "company": "Apple",
      "image": [
        "https://m.media-amazon.com/images/I/71eXNIDUGjL._SX679_.jpg",
        "https://m.media-amazon.com/images/I/610TpF8jQyL._SX679_.jpg",
        "https://m.media-amazon.com/images/I/81v8DvchdSL._SX679_.jpg",
        "https://m.media-amazon.com/images/I/61pRKAL2DPL._SX679_.jpg"
      ],
      "colors": [
        {"colorname": "grey", "code": Colors.grey},
        {"colorname": "black", "code": Colors.black},
        {"colorname": "starlight", "code": Colors.yellow.shade200},
      ],
      "Description":
          "STRIKINGLY THIN DESIGN – The redesigned MacBook Air is more portable than ever and weighs just 1.24 kg (2.7 pounds). It’s the ultra-capable laptop that lets you work, play or create just about anything — anywhere.^SUPERCHARGED BY M2 – Get more done faster with a next-generation 8-core CPU, up to 10-core GPU and up to 24GB of unified memory.",
      "price": "₹1,29,049"
    },
    {
      "productname": "Airpods Pro",
      "longname": "AppIe Aírpoḍs Pro (2nd Generation)^ ",
      "company": "Apple",
      "image": [
        "https://m.media-amazon.com/images/I/515ypRlGieL._SY879_.jpg",
        "https://m.media-amazon.com/images/I/51YvYwYRTCL._SY879_.jpg",
        "https://m.media-amazon.com/images/I/41Urw-7rQlL._SY879_.jpg",
        "https://m.media-amazon.com/images/I/41ImShNNjoL._SY879_.jpg"
      ],
      "colors": [
        {"colorname": "white", "code": Colors.white24},
      ],
      "Description":
          "Apple Aírpoḍs (2nd Generation) .Adaptive Transparency lets outside sounds in while reducing loud environmental noise. Personalised Spatial Audio with dynamic head tracking places sound all around you. Automatically on, automatically connected. Easy setup for all your Apple devices. Quick access to Siri by saying “Hey Siri”. New Apple H1 headphone chip delivers faster wireless connection to your devices. Charges quickly in the case. Case can be charged using the Lightning connector",
      "price": "₹18,990"
    },
    //--------------------------------
    {
      "productname": "S24 Ultra",
      "longname":
          "Samsung Galaxy S24 Ultra 5G ^(Titanium Gray, 12GB, 512GB Storage)",
      "company": "Samsung",
      "image": [
        "https://m.media-amazon.com/images/I/81njZjDqc6L._SX679_.jpg",
        "https://m.media-amazon.com/images/I/71JLhofuYJL._SX679_.jpg",
        "https://m.media-amazon.com/images/I/71ZdFihN4YL._SX679_.jpg",
        "https://m.media-amazon.com/images/I/71h5+9-CgbL._SX679_.jpg",
      ],
      "colors": [
        {
          "colorname": "Titanium Black",
          "code": Color.fromRGBO(36, 35, 34, 0.8)
        },
        {
          "colorname": "Titanium Gray",
          "code": Color.fromRGBO(109, 100, 96, 0.8)
        },
        {
          "colorname": " Titanium Violet",
          "code": Color.fromRGBO(37, 33, 53, 0.8)
        },
      ],
      "Description":
          "Meet Galaxy S24 Ultra, the ultimate form of Galaxy Ultra with a new titanium exterior and a 17.25cm (6.8) flat display. It's an absolute marvel of design.The legacy of Galaxy Note is alive and well. Write, tap and navigate with precision your fingers wish they had on the new, flat display. With the most megapixels on a smartphone and AI processing, Galaxy S24 Ultra sets the industry standard for image quality every time you hit the shutter. What's more, the new ProVisual engine recognizes objects — improving colour tone, reducing noise and bringing out detail.",
      "price": " ₹1,29,999"
    },
    {
      "productname": "Dell XPS 9315",
      "longname":
          "Dell XPS 9315 Laptop ^Intel Evo Platform Powered by Intel Core i7-1250U Processor, 16GB LPDDR5, 512Gb SSD, 13.4 (34.03cm) FHD+ AG 500 nits, Backlit KB & FPR, Win 11 + MSO'21, Sky Color, 1.17Kgs",
      "company": "Dell",
      "image": [
        "https://m.media-amazon.com/images/I/51SGA9AdUyL._SX679_.jpg",
        "https://m.media-amazon.com/images/I/51ARn24JR+L._SX679_.jpg",
        "https://m.media-amazon.com/images/I/51C7NmUpRBL._SX679_.jpg",
        "https://m.media-amazon.com/images/I/61G0GkvBcPL._SX679_.jpg"
      ],
      "colors": [
        {"colorname": "sky", "code": Colors.blue},
      ],
      "Description":
          "The Dell XPS 9315 laptop features a 13.4-inch InfinityEdge display with a resolution of 1920 x 1200 pixels. It is powered by the Intel Core i5-1135G7 processor, 8GB of RAM, and 512GB of SSD storage. The device runs on Windows 10 Home and has integrated Intel Iris Xe Graphics. It has a backlit keyboard, fingerprint reader, and stereo speakers with Waves MaxxAudio Pro. The laptop has a battery life of up to 14 hours and supports fast charging. It also features Wi-Fi 6, Bluetooth 5.1, and Thunderbolt 4 ports.",
      "price": "₹1,19,490"
    },
    {
      "productname": "iPhone 15",
      "longname": "Apple iPhone 15 ^(256 GB) - Blue",
      "company": "Apple",
      "image": [
        "https://m.media-amazon.com/images/I/71d7rfSl0wL._SX679_.jpg",
        "https://m.media-amazon.com/images/I/51wKeZuX6rL._SX679_.jpg",
        "https://m.media-amazon.com/images/I/61f4dTush1L._SX679_.jpg",
        "https://m.media-amazon.com/images/I/81BnjSLm2oL._SX679_.jpg",
      ],
      "colors": [
        {"colorname": "Black", "code": Colors.black},
        {"colorname": "green", "code": Colors.lightGreenAccent.shade200},
        {"colorname": "blue", "code": Colors.lightBlueAccent.shade200},
        {"colorname": "yellow", "code": Colors.yellowAccent.shade200},
      ],
      "Description":
          "DYNAMIC ISLAND COMES TO IPHONE 15 — Dynamic Island bubbles up alerts and Live Activities — so you don’t miss them while you’re doing something else. You can see who’s calling, track your next ride, check your flight status, and so much more.INNOVATIVE DESIGN — iPhone 15 features a durable color-infused glass and aluminum design. It’s splash, water, and dust resistant. The Ceramic Shield front is tougher than any smartphone glass. And the 6.1 Super Retina XDR display is up to 2x brighter in the sun compared to iPhone 14.48MP MAIN CAMERA WITH 2X TELEPHOTO — The 48MP Main camera shoots in super-high resolution. So it’s easier than ever to take standout photos with amazing detail. The 2x optical-quality Telephoto lets you frame the perfect close-up.",
      "price": "₹84,900"
    },
    {
      "productname": "iPhone 15 Pro",
      "longname": "Apple iPhone 15 Pro ^(256 GB) - White Titanium",
      "company": "Apple",
      "image": [
        "https://m.media-amazon.com/images/I/81qlME2wWmL._SX679_.jpg",
        "https://m.media-amazon.com/images/I/51aXLMPCGxL._SX679_.jpg",
        "https://m.media-amazon.com/images/I/71g7dxYXiOL._SX679_.jpg",
        "https://m.media-amazon.com/images/I/81MDZsYTIoL._SX679_.jpg",
      ],
      "colors": [
        {"colorname": "Black Titanium", "code": Colors.black},
        {"colorname": "Natural Titanium", "code": Colors.white38},
        {"colorname": "blue Titanium", "code": Colors.lightBlueAccent.shade200},
        {"colorname": "White Titanium", "code": Colors.white70},
      ],
      "Description":
          "FORGED IN TITANIUM — iPhone 15 Pro has a strong and light aerospace-grade titanium design with a textured matte-glass back. It also features a Ceramic Shield front that’s tougher than any smartphone glass. And it’s splash, water, and dust resistant.ADVANCED DISPLAY — The 6.1” Super Retina XDR display with ProMotion ramps up refresh rates to 120Hz when you need exceptional graphics performance. Dynamic Island bubbles up alerts and Live Notifications. Plus, with Always-On display, your Lock Screen stays glanceable, so you don’t have to tap it to stay in the know.GAME-CHANGING A17 PRO CHIP — A Pro-class GPU makes mobile games feel so immersive, with rich environments and realistic characters. A17 Pro is also incredibly efficient and helps to deliver amazing all-day battery life.",
      "price": "₹1,40,990"
    },
    {
      "productname": "realme narzo N55",
      "longname":
          "realme narzo N55 ^(Prime Black, 6GB+128GB) 33W Segment Fastest Charging | Super High-res 64MP Primary AI Camera",
      "company": "realme",
      "image": [
        "https://m.media-amazon.com/images/I/81ogvU1j6qL._SX679_.jpg",
        "https://m.media-amazon.com/images/I/7179Std+mzL._SX679_.jpg",
        "https://m.media-amazon.com/images/I/81ZWQBCvCgL._SX679_.jpg",
        "https://m.media-amazon.com/images/I/615jBTP0-7L._SX679_.jpg",
      ],
      "colors": [
        {"colorname": "prime Black", "code": Colors.black},
        {"colorname": "prime blue", "code": Colors.lightBlueAccent.shade200},
      ],
      "Description":
          "* With fast 33W SUPERVOOC charging, the realme narzo N55 charges up the massive 5000mAh battery from 0-50% in just 29 minutes, making your life super convenient and stress free.* Super High-res 64MP primary AI camera allows you to shoot crisp and clear shots in any scenario with incredible detail. The flagship grade ProLight Imaging technology brings segment leading low light performance to the N55.* Enjoy up to 12GB of Dynamic RAM made up from up to 6GB of onboard RAM and up to an additional 6GB of Dynamic RAM for next level multi tasking.* Large 6.72” Full screen display on the narzo N55 provides a segment leading display with a centre punch hole display, 90Hz ultra smooth refresh rate, 680nits of peak brightness, and 91.4% screen-to-Body ratio.",
      "price": "₹9,999"
    },
    {
      "productname": "MI Xiaomi TV",
      "longname":
          "MI Xiaomi 108 cm (43 inches) X Series 4K Ultra HD Smart Android LED TV ^L43M7-A2IN (Black)",
      "company": "MI Xiaomi",
      "image": [
        "https://m.media-amazon.com/images/I/81UrmQEhSuL._SX679_.jpg",
        "https://m.media-amazon.com/images/I/81rhEl2I7oL._SX679_.jpg",
        "https://m.media-amazon.com/images/I/71GBPfV0BBL._SX679_.jpg",
        "https://m.media-amazon.com/images/I/61LLODtHPKL._SX679_.jpg",
      ],
      "colors": [
        {"colorname": "Black", "code": Colors.black},
      ],
      "Description":
          "Resolution: 4K Ultra HD (3840 x 2160) | Refresh Rate: 60 hertz | 178 degree wide viewing angleConnectivity: 3 HDMI ports to connect latest gaming consoles, set top box, Blu-ray Players | 2 USB ports to connect hard drives and other USB devices | Dual Band Wi-Fi (2.4 GHz/ 5 GHz) | ALLM | eARC | Bluetooth 5.0 | Optical | Ethernet | 3.5mm earphone JackSound: 30 Watts Output | Dolby Audio, DTS Virtual: X, DTS-HD.Smart TV Features : Android TV 10 | PatchWall 4 with IMDb integration | Kids Mode with Parental Lock | 300+ Free Live Channels | Universal search | Language Universe (16+ Languages) | India's Top 10 | Miracast | Supported Apps: Prime Video | Netflix | Disney + Hotstar | YouTube | Apple TV | 10000+ apps from Play Store | Quad core A55 CPU processor | Chromecast built-in | Ok Google | Auto Low Latency Mode | 2GB RAM + 16GB Storage",
      "price": "₹25,999"
    },
  ];

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> filteredlist = [];
    products.forEach((element) {
      if (element['productname']
              .toString()
              .toLowerCase()
              .contains(widget.searchText.toString().toLowerCase()) ||
          element['company']
              .toString()
              .toLowerCase()
              .contains(widget.searchText.toString().toLowerCase())) {
        filteredlist.add(element);
      }
    });
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            "Found ${filteredlist.length} results",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: GridView.builder(
            itemCount: filteredlist.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1 / 1.4,
            ),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ProductDetail(filteredlist[index],widget.cartList),
                    ),
                  );
                },
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(),
                          ),
                          Expanded(
                              flex: 5,
                              child: Card(
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        filteredlist[index]['company'],
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        filteredlist[index]['productname'],
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "from ${filteredlist[index]['price']}",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                ),
                                surfaceTintColor: Colors.white,
                                elevation: 10,
                              )),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(),
                                ),
                                Expanded(
                                  flex: 5,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          filteredlist[index]['image'][0],
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: List.filled(
                                        filteredlist.length,
                                        BoxShadow(
                                          blurRadius: 2,
                                          color: Colors.transparent,
                                          offset: Offset(0, 4),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(),
                        ),
                      ],
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
