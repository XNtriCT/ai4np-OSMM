import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/splash_screen.dart';
import 'screens/command_center.dart';
import 'screens/archive_log.dart';
import 'screens/system_config.dart';

void main() {
  runApp(const OSMMApp());
}

class OSMMApp extends StatelessWidget {
  const OSMMApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OSMM - AI for Non-Profits',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF2D0B5A),
          brightness: Brightness.dark,
          primary: const Color(0xFFD4AF37),
          secondary: const Color(0xFFF9E498),
          surface: const Color(0xFF1A0533),
          background: const Color(0xFF1A0533),
        ),
        textTheme: GoogleFonts.beVietnamProTextTheme(
          ThemeData(brightness: Brightness.dark).textTheme,
        ).copyWith(
          displayLarge: GoogleFonts.playfairDisplay(
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/command_center': (context) => const CommandCenterScreen(),
        '/archive': (context) => const ArchiveLogScreen(),
        '/config': (context) => const SystemConfigScreen(),
      },
    );
  }
}
