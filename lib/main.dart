import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Book Store",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Map<String, String>> cart = []; // Cart to store selected books

  // List of book titles and authors
  final List<Map<String, String>> books = [
    {'title': 'The Great Adventure', 'author': 'John Doe'},
    {'title': 'Science for Kids', 'author': 'Jane Smith'},
    {'title': 'History Unfolded', 'author': 'Michael Brown'},
    {'title': 'Biography of a Legend', 'author': 'Sarah White'},
    {'title': 'Tech Insights', 'author': 'David Green'},
    {'title': 'Fantasy World', 'author': 'Emily Black'},
    {'title': 'Mystery of the Hidden Path', 'author': 'George King'},
    {'title': 'Art and Creativity', 'author': 'Olivia Gray'}
  ];

  final List<String> categoryImages = [
    'https://cdn.shopify.com/s/files/1/0070/1884/0133/t/8/assets/pf-71b40b91--Books_1200x.jpg?v=1620061288',
    'https://cdn.britannica.com/21/182021-050-666DB6B1/book-cover-To-Kill-a-Mockingbird-many-1961.jpg',
    'https://cdn.shopify.com/s/files/1/0070/1884/0133/t/8/assets/pf-157924db--Books11_1200x.jpg?v=1620061425',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5mD8VVu6mWrNHfm9yMw8cmLNeuN9ijyqgdQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdsRiH5eY-2RHxzLh7nkhP5D8ez_UVgn2PwA&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlF8maI1Q1Y3NGL_cxCTVwBrJvKiY7HTFy7w&s',
    'https://cdn.shopify.com/s/files/1/0070/1884/0133/t/8/assets/pf-24db0028--Books13_1200x.jpg?v=1620061439',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrPNvSiHfEofQr5HvfNeTHgpQ_KRh_VD-aXw&s'
  ];

  void addToCart(int index) {
    setState(() {
      cart.add({
        'title': books[index]['title']!,
        'image': categoryImages[index],
      });
    });
  }

  void showCart() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => CartScreen(cart: cart),
      ),
    );
  }

  void handleMenuAction(String action) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Selected: $action')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            onPressed: showCart,
            icon: const Icon(Icons.shopping_cart),
            color: Colors.white,
          ),
          PopupMenuButton<String>(
            onSelected: handleMenuAction,
            icon: const Icon(Icons.menu, color: Colors.white),
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(value: "Profile", child: Text("Profile")),
                const PopupMenuItem(value: "Settings", child: Text("Settings")),
                const PopupMenuItem(value: "Logout", child: Text("Logout")),
              ];
            },
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
                "TRENDINGS",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 20),
              ...List.generate(
                8,
                (index) => Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 150,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image: NetworkImage(categoryImages[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Book Name: ${books[index]['title']}",
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "Author: ${books[index]['author']}",
                              style: const TextStyle(color: Colors.white),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "ISBN: 978-12345678${index + 1}",
                              style: const TextStyle(color: Colors.white),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "Year: ${2020 + index}",
                              style: const TextStyle(color: Colors.white),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () => addToCart(index),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(255, 230, 43, 18),
                                  ),
                                  child: const Text(
                                    "Order",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                ElevatedButton(
                                  onPressed: () => addToCart(index),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                  ),
                                  child: const Icon(
                                    Icons.add_shopping_cart,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
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
        ),
      ),
    );
  }
}

class CartScreen extends StatefulWidget {
  final List<Map<String, String>> cart;

  const CartScreen({super.key, required this.cart});

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  // Function to remove item from cart
  void removeFromCart(int index) {
    setState(() {
      widget.cart.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Cart",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black, // Black background for the cart page
        child: widget.cart.isEmpty
            ? const Center(
                child: Text(
                  "Your cart is empty!",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              )
            : ListView.separated(
                itemCount: widget.cart.length,
                separatorBuilder: (context, index) => const Divider(
                  color: Colors.white, // Vertical line between items
                  thickness: 1.0,
                ),
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image.network(widget.cart[index]['image']!),
                    title: Text(
                      widget.cart[index]['title']!,
                      style: const TextStyle(color: Colors.white),
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),
                      onPressed: () => removeFromCart(index),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
