import 'package:banking/screens/payment.dart';
import 'package:banking/utils/hex_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<String> img = [
    'https://media.istockphoto.com/id/1371301907/photo/friendly-young-man-wearing-denim-shirt.jpg?b=1&s=170667a&w=0&k=20&c=uvclBOQrU3gd4_FMwzmTNK1PY4ydO_SlEgELJYj5mVI=',
    'https://t4.ftcdn.net/jpg/04/13/55/45/360_F_413554591_BQzOaigFwRTgpoXU8WLY6hhQZYzijQek.jpg',
    'https://media.istockphoto.com/id/1207856385/photo/joyful-happy-african-american-young-man-in-eyeglasses-portrait.jpg?s=612x612&w=0&k=20&c=M5sUFPE5xlF1fMxvNYgAqdpSZYKxSor3-SlF-o6IiJ0=',
    'https://media.istockphoto.com/id/1097328108/photo/happy-afro-american-man-with-nerd-eyeglasses-looking-away.jpg?s=612x612&w=0&k=20&c=oGsAw_ujEXfdhhTjR6OVnRsQjim2-5SOvp98LzSa7nU=',
    'https://media.istockphoto.com/id/1354524757/photo/casual-african-american-woman-smiling-in-purple-studio-isolated-background.jpg?b=1&s=170667a&w=0&k=20&c=8MxQbHDUExcyfLm9RvxITgGWMyfqCftOv5is8p426lE=',
    'https://www.menshairstylestoday.com/wp-content/uploads/2022/02/Blonde-Curly-Hair-Fade-Haircut-For-Black-Men.jpg',
    'https://img.freepik.com/premium-photo/portrait-astonished-guy-sit-floor-cheerfing-victory-isolated-yellow-background_525549-2093.jpg?w=2000',
    'https://www.shutterstock.com/image-photo/young-handsome-man-african-american-260nw-1504639730.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _buildBottomNav(),
      backgroundColor: HexColor("#f6f6f6"),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildProfileContainer(),
              _buildMasterCard(),
              const SizedBox(
                height: 15,
              ),
              _buildUsers(),
              const SizedBox(
                height: 10,
              ),
              _buildInsight(),
              const SizedBox(
                height: 10,
              ),
              _buildTransaction()
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileContainer() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/pic.jpg"),
                  backgroundColor: HexColor("#EFEFEF"),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Welcome back",
                        style: TextStyle(color: HexColor("#d8d8d8")),
                      ),
                    ),
                    const Text(
                      "Nolan Francis",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          IconButton(onPressed: () {}, icon: const Icon(LineIcons.bell))
        ],
      ),
    );
  }

  Widget _buildBottomNav() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12), topRight: Radius.circular(12)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: () {}, 
              child: Row(
              children: const[
                Icon(Icons.payment),
                Text("Request")
              ],
            )),

             ElevatedButton(onPressed: () {}, 
              child: Row(
              children: const[
                Icon(LineIcons.telegram),
                Text("Send")
              ],
            ))
            
            ],
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:  [
                Column(
                  children: const[
                    Icon(LineIcons.home),
                    Text("Home")
                  ],
                ),
                Column(
                  children: const[
                    Icon(LineIcons.handHoldingUsDollar),
                    Text("Payment")
                  ],
                ),
                Column(
                  children: const[
                    Icon(Icons.wallet),
                    Text("Wallet")
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildMasterCard() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.98,
      height: 150,
      decoration: BoxDecoration(
          color: HexColor("#242424"), borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "your account balance is",
                  style: TextStyle(
                    color: HexColor("#a0a0a0"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 130,
                  height: 40,
                  decoration: BoxDecoration(
                      color: HexColor("#0d72df"),
                      borderRadius: BorderRadius.circular(18)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Icon(
                          LineIcons.wallet,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Statistics",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  """Gh₵ 56,453.023""",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Text(
                  "*** **** 354",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildUsers() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                "Send Again",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: TextButton(onPressed: () {}, child: const Text("see all")),
            )
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (var i = 0; i < img.length; i++)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: ()=>Get.to(()=> PaymentScreen(img: img[i],),transition: Transition.cupertino),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: HexColor("#fa76a1"),
                          backgroundImage: NetworkImage(img[i]),
                        ),
                      ),
                    ],
                  ),
                )
            ],
          ),
        )
      ],
    );
  }

  Widget _buildInsight() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: const [
              Text(
                "Insights",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Icon(LineIcons.wavyMoneyBill),
                            Text(
                              "Spending",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text.rich(
                          const TextSpan(
                              text:
                                  'You have reached 18.5% of your shopping budget'),
                          style: TextStyle(
                              fontSize: 12, color: HexColor('#d8d8d8')),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Icon(LineIcons.ggCurrency),
                            Text(
                              "Savings",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text.rich(
                          const TextSpan(
                              text:
                                  'There is a potential to increase your savings'),
                          style: TextStyle(
                              fontSize: 12, color: HexColor('#d8d8d8')),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              Icon(LineIcons.barChartAlt),
                              Text(
                                "Investment",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text.rich(
                            const TextSpan(
                                text:
                                    'There is a potential to increase your savings'),
                            style: TextStyle(
                                fontSize: 12, color: HexColor('#d8d8d8')),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTransaction() {
    return Column(
      children: [
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                "Transaction",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundColor: HexColor('#6ed743'),
                              radius: 25,
                              child: const Icon(LineIcons.paypal),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Column(
                                children: const [
                                  Text(
                                    "PAYPAL",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        const Text("\$234.301")
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
