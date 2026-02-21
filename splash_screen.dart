import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/command_center');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.center,
            radius: 1.0,
            colors: [Color(0xFF3B0D75), Color(0xFF1A0533)],
            stops: [0.0, 1.0],
          ),
        ),
        child: Stack(
          children: [
            // Background glows
            Center(
              child: Container(
                width: 500,
                height: 500,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0x4D8A2BE2), // 30% opacity purple glow
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x4D8A2BE2),
                      blurRadius: 120,
                      spreadRadius: 60,
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0x33D4AF37), // 20% opacity gold glow
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x33D4AF37),
                      blurRadius: 80,
                      spreadRadius: 40,
                    ),
                  ],
                ),
              ),
            ),
            
            // Content
            SafeArea(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Robot Icon Container
                    Container(
                      width: 144,
                      height: 144,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0x0DFFFFFF), Color(0x00FFFFFF)],
                        ),
                        border: Border.all(color: const Color(0x4DD4AF37)),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x80000000),
                            blurRadius: 50,
                            offset: Offset(0, 20),
                          ),
                        ],
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.smart_toy_outlined,
                          size: 112,
                          color: Color(0xFFD4AF37),
                        ),
                      ),
                    ),
                    const SizedBox(height: 48),
                    
                    // Text Content
                    Text(
                      'OSMM',
                      style: Theme.of(context).textTheme.displayLarge?.copyWith(
                        fontSize: 64,
                        color: const Color(0xFFD4AF37), // Fallback to gold main
                        letterSpacing: -2,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'OUR SOCIAL MEDIA MANAGER',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFFD4AF37),
                        letterSpacing: 4.2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            
            // Bottom text
            Positioned(
              bottom: 64,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  Container(
                    width: 192,
                    height: 2,
                    margin: const EdgeInsets.only(bottom: 24),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      gradient: const LinearGradient(
                        colors: [
                          Colors.transparent,
                          Color(0x99D4AF37),
                          Colors.transparent,
                        ],
                      ),
                    ),
                  ),
                  Text(
                    'NON-PROFIT AI SUITE',
                    style: TextStyle(
                      fontSize: 9,
                      color: const Color(0x66D4AF37),
                      letterSpacing: 2.0,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'PREMIUM ACCESS • V4.0',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.white.withOpacity(0.2),
                      letterSpacing: 2.5,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
