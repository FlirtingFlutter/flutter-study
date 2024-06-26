import 'package:flutter/material.dart';
import 'package:toonflix/button.dart';
import 'package:toonflix/currency_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xFF181818),
          body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 80,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                'Hey, Selena',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              Text(
                                'Welcome back',
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.8),
                                  fontSize: 18,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 70,
                      ),
                      Text(
                        'Total Balance',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white.withOpacity(0.8),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        '\$5 194 482',
                        style: TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Button(
                            text: 'Transfer',
                            bgcolor: Color(0xFFF2B33A),
                            txtcolor: Colors.black,
                          ),
                          Button(
                            text: 'Request',
                            bgcolor: Color(0xFF1F2123),
                            txtcolor: Colors.white,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Wallets',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 36,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'View all',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const CurrencyCard(
                        name: 'Euro',
                        code: 'EUR',
                        amount: '6 428',
                        icon: Icons.euro_outlined,
                        isInverted: false,
                        y: 0,
                      ),
                      const CurrencyCard(
                        name: 'Dollar',
                        code: 'USD',
                        amount: '55 622',
                        icon: Icons.paid_outlined,
                        isInverted: true,
                        y: -20,
                      ),
                      const CurrencyCard(
                        name: 'Rupee',
                        code: 'INR',
                        amount: '28 981',
                        icon: Icons.currency_rupee_outlined,
                        isInverted: false,
                        y: -40,
                      ),
                    ])),
          )),
    );
  }
}
