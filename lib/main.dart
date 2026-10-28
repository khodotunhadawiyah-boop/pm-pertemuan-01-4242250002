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
      title: 'Hello World Flutter',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFFFB38A),
          brightness: Brightness.light,
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _klik = 0;

  // Palet warna peach
  static const Color peach = Color(0xFFFFB38A);
  static const Color peachDark = Color(0xFFE8825A);
  static const Color peachLight = Color(0xFFFFE5D4);
  static const Color cream = Color(0xFFFFF6EE);
  static const Color cocoa = Color(0xFF5A3A2E);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [peachLight, cream],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Hello World',
                    style: TextStyle(
                      fontSize: 16,
                      letterSpacing: 2,
                      fontWeight: FontWeight.w600,
                      color: peachDark,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.fromLTRB(24, 32, 24, 28),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(32),
                      boxShadow: [
                        BoxShadow(
                          color: peach.withOpacity(0.35),
                          blurRadius: 30,
                          offset: const Offset(0, 14),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(6),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              colors: [peach, peachDark],
                            ),
                          ),
                          child: const CircleAvatar(
                            radius: 48,
                            backgroundColor: cream,
                            child: Icon(
                              Icons.school_rounded,
                              size: 52,
                              color: peachDark,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'Khodotun Hadawiyah. M',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w800,
                            color: cocoa,
                          ),
                        ),
                        const SizedBox(height: 14),
                        _infoChip(Icons.badge_rounded, 'NIM: 4242250002'),
                        const SizedBox(height: 8),
                        _infoChip(Icons.class_rounded, 'Kelas: PSIK 24D'),
                        const SizedBox(height: 28),
                        ElevatedButton.icon(
                          onPressed: () => setState(() => _klik++),
                          icon: const Icon(Icons.favorite_rounded),
                          label: const Text('Tekan saya'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: peachDark,
                            foregroundColor: Colors.white,
                            elevation: 6,
                            shadowColor: peachDark.withOpacity(0.5),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 32, vertical: 14),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Tombol ditekan $_klik kali',
                          style: const TextStyle(
                            fontSize: 15,
                            color: cocoa,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _infoChip(IconData icon, String teks) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: peachLight,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 18, color: peachDark),
          const SizedBox(width: 8),
          Text(
            teks,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: cocoa,
            ),
          ),
        ],
      ),
    );
  }
}