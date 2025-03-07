import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freezflow/ui/home/color.dart';
import 'package:freezflow/ui/home/home_screen.dart';
import 'package:freezflow/ui/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: AppColors.background,
        statusBarIconBrightness: Brightness.light));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.green),
      home: const HomeScreen(),
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
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 74, 72, 72)
                                  .withValues(alpha: 0.1),
                              blurRadius: 6,
                              offset: const Offset(0, 3),
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
                  const Spacer(
                    flex: 1,
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
