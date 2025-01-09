import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Space App",
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          shadowColor: Colors.yellow,
          title: const Text(
            "Book Store",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
              color: Colors.white,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "SPACE DETAILS",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 50),
                Center(
                  child: Image.asset(
                    "assets/book1.jpeg",
                    height: 300,
                    scale: 2,
                  ),
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "A black hole is a region in space where gravity is so strong that nothing, not even light, can escape. Formed when massive stars collapse under their own gravity, black holes warp space and time. They remain mysterious, drawing scientists to study their properties and uncover the secrets of the universe.",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 100),
                GestureDetector(
                  onTap: () {},
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(15)),
                      padding: const EdgeInsets.all(15),
                      child: const Text(
                        "Space Details",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                Center(
                  child: Image.asset("assets/book2.jpg"),
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Saturn, the sixth planet from the Sun, is known for its stunning ring system made of ice and rock. A gas giant, it is primarily composed of hydrogen and helium. Saturn has over 80 moons, including Titan, the second-largest moon in the solar system. Its captivating beauty and unique features make it a favorite subject of astronomical exploration.",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      5,
                      (index) => Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.primaries[index % Colors.primaries.length],
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Image.asset(
                    "assets/book3.png",
                    height: 300,
                    scale: 2,
                  ),
                ),
                const SizedBox(height: 40),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "The Sun, a massive ball of hot plasma, is the heart of our solar system. It provides the light and energy necessary for life on Earth. Composed mainly of hydrogen and helium, the Sun generates energy through nuclear fusion in its core. Its immense gravitational pull holds the planets, moons, and other celestial bodies in orbit. The Sun's powerful influence shapes weather, climate, and the cycles of life on our planet.",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 50),
                GestureDetector(
                  onTap: () {},
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(15)),
                      child: const Text(
                        "Space Details",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 5,
                  width: 500,
                  color: Colors.white30,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Black Hole",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const Text(
                  "A black hole is a region in space where gravity is so strong that nothing, not even light, can escape. Formed when massive stars collapse under their own gravity, black holes warp space and time. They remain mysterious, drawing scientists to study their properties and uncover the secrets of the universe.",
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
