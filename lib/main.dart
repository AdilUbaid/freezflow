import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: RadialGradient(
          colors: [
            Color.fromARGB(255, 116, 135, 235),
            Color.fromARGB(255, 246, 246, 246),
          ],
          center: Alignment(-0.4, 0.8), // Center of the gradient
          radius: 0.5, // Radius of the gradient
        )),
        child: Scaffold(
          backgroundColor: Colors.grey.shade200.withValues(alpha: 0.5),
          body: Center(
            // Center is a layout widget. It takes a single child and positions it
            // in the middle of the parent.
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Spacer(
                    flex: 3,
                  ),

                  // Title
                  const Text(
                    "Sign In to recharge Direct",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  const Spacer(
                    flex: 1,
                  ),

                  // Email TextField
                  Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Enter Email",
                          suffixIcon: const Icon(Icons.close),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Password TextField
                      Container(
                        decoration: BoxDecoration(
                          color:
                              Colors.white, // Background color of the TextField
                          borderRadius: BorderRadius.circular(
                              12), // Match the TextField's borderRadius
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 74, 72, 72)
                                  .withOpacity(0.1), // Shadow color
                              blurRadius: 6, // Spread of the shadow
                              offset: Offset(
                                  0, 3), // Horizontal and vertical offset
                            ),
                          ],
                        ),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Password",
                            suffixIcon:
                                const Icon(Icons.visibility_off_outlined),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: Colors
                                .white, // Ensure the same color is used here
                          ),
                        ),
                      )
                    ],
                  ),

                  const Spacer(
                    flex: 2,
                  ),
                  // Sign In Button
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      backgroundColor: const Color.fromARGB(255, 68, 97, 242),
                    ),
                    child: const Center(
                      child: Text(
                        "Sign In",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  const Text(
                    "If you don't have an account, please sign up",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 40),
                  Spacer(
                    flex: 1,
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
