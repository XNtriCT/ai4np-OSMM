import 'package:flutter/material.dart';

class CommandCenterScreen extends StatelessWidget {
  const CommandCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF120524),
      body: Stack(
        children: [
          // Background glows
          Positioned(
            top: -100,
            left: -100,
            child: Container(
              width: 400,
              height: 400,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0x337C3AED), // 20% royal-violet
                boxShadow: [
                  BoxShadow(color: Color(0x337C3AED), blurRadius: 120, spreadRadius: 60),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 100,
            right: -50,
            child: Container(
              width: 350,
              height: 350,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0x26A855F7), // 15% electric-purple
                boxShadow: [
                  BoxShadow(color: Color(0x26A855F7), blurRadius: 130, spreadRadius: 65),
                ],
              ),
            ),
          ),

          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 48, 24, 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 44,
                            width: 44,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: const Color(0xFF1A0B2E),
                              border: Border.all(color: const Color(0x4DD4AF37)),
                            ),
                            child: ClipOval(
                              child: Image.network(
                                'https://lh3.googleusercontent.com/aida-public/AB6AXuBZr-v4HzGfwCZPQ8VkGNfHo9axxnDe1nD219P5B_Wca7jssC8p29LaPM3oD5BHkwGi7pwHkv0DA8nVjZPhoB5d6mJ7I0nY-k8xyg1NMotU0I08GPnvxD-BPz2FrBsD8FAHU12s1wtRTmsE-l6q6s8Y0bqb5U84zRk0JKJa9453oYVnkBWU4sMBNBgU90TQIYPIaQErRo5aEAGUPMWDd_lCtpaRoouKR1fEch-NnPY7-1J8VOjzuVRLjsxEKDzdapV3XPrWe1RAWdk',
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) => const Icon(Icons.person, color: Colors.white),
                              ),
                            ),
                          ),
                          Container(
                            width: 44,
                            height: 44,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: const Color(0x731E0F37), // glass panel
                              border: Border.all(color: const Color(0x26D4AF37)),
                            ),
                            child: const Icon(
                              Icons.notifications_outlined,
                              color: Color(0xCCD4AF37),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            child: Image.network(
                              'https://lh3.googleusercontent.com/aida-public/AB6AXuC-4uCdGYkyLksXihTmlt9QmaqD3RrosCMbfUd1igk3T3ub18ji2vxKwIZdZhNWlLcXkZfNIsEVZ9jU1cAQtr4DR7WloscAmNeBMDIK2FG4Oo9j-YxuB3jEOVOMHgUevzBu_bbsUkO_BU4Oxjhlu5D-jt-oI0k01LtjNAeqO77HLNxb9A7MHADxBDpodgAAyqbTvuGUHDwB1z-ZCKQQI6r360KkMyesijfvQhSqbxgeqkvtTW_ULGZC_L2erlIZo0OtGM2EI9ZVBOY',
                              errorBuilder: (context, error, stackTrace) => const Icon(Icons.smart_toy, color: Color(0xFFD4AF37), size: 40),
                            ),
                          ),
                          const SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'OSMM',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFF4D06F),
                                ),
                              ),
                              Text(
                                'PREMIUM COMMAND CENTER',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF7C3AED),
                                  letterSpacing: 2.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Ready to launch,\nKunju?',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          height: 1.1,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Select a premium automation to amplify your impact.',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF94A3B8), // slate-400
                        ),
                      ),
                    ],
                  ),
                ),

                // Grid Buttons
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: GridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                      childAspectRatio: 0.9,
                      children: [
                        _buildActionCard(
                          context,
                          'Daily Feed',
                          'Generate standard daily content',
                          Icons.feed_outlined,
                          'daily_feed',
                        ),
                        _buildActionCard(
                          context,
                          'Special Day',
                          'Holidays & events content',
                          Icons.event_available,
                          'special_day',
                        ),
                        _buildActionCard(
                          context,
                          'Innovative',
                          'Experimental creative ideas',
                          Icons.lightbulb_outline,
                          'innovative',
                        ),
                        _buildActionCard(
                          context,
                          'Trendjacking',
                          'Leverage viral topics fast',
                          Icons.trending_up,
                          'trendjacking',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          
          // Bottom Nav
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.only(top: 16, bottom: 32),
              decoration: const BoxDecoration(
                color: Color(0xF2120524),
                border: Border(top: BorderSide(color: Color(0x33D4AF37))),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildNavItem(Icons.home, 'Home', true, () {}),
                  _buildNavItem(Icons.history, 'History', false, () {
                    Navigator.pushNamed(context, '/archive');
                  }),
                  _buildNavItem(Icons.analytics_outlined, 'Stats', false, () {}),
                  _buildNavItem(Icons.settings_outlined, 'Setup', false, () {
                    Navigator.pushNamed(context, '/config');
                  }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionCard(BuildContext context, String title, String subtitle, IconData icon, String type) {
    return GestureDetector(
      onTap: () {
        // Trigger generic post generation logic, which goes to backend.
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0x267C3AED), Color(0x0DA855F7)],
          ),
          border: Border.all(color: const Color(0x40D4AF37)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                color: const Color(0xE6120524),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: const Color(0x4D7C3AED)),
              ),
              child: Icon(icon, color: const Color(0xFFF4D06F)),
            ),
            const Spacer(),
            Text(
              title,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              subtitle,
              style: const TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w300,
                color: Color(0xFF94A3B8),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, bool isActive, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 26,
            color: isActive ? const Color(0xFFD4AF37) : const Color(0x997C3AED), // gold vs faded violet
          ),
          const SizedBox(height: 6),
          Text(
            label.toUpperCase(),
            style: TextStyle(
              fontSize: 10,
              fontWeight: isActive ? FontWeight.bold : FontWeight.w500,
              color: isActive ? const Color(0xFFF4D06F) : const Color(0x997C3AED),
            ),
          ),
        ],
      ),
    );
  }
}
