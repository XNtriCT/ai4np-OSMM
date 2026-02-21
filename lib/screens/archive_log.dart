import 'package:flutter/material.dart';

class ArchiveLogScreen extends StatelessWidget {
  const ArchiveLogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F051D), // deep-purple
      body: Stack(
        children: [
          // Background Glows
          Positioned(
            top: -50,
            left: -100,
            child: Container(
              width: 500,
              height: 400,
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                color: Color(0x1A9D50BB), // 10% amethyst
                boxShadow: [
                  BoxShadow(color: Color(0x1A9D50BB), blurRadius: 120, spreadRadius: 60),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: -50,
            right: -100,
            child: Container(
              width: 500,
              height: 400,
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                color: Color(0x0DD4AF37), // 5% gold-primary
                boxShadow: [
                  BoxShadow(color: Color(0x0DD4AF37), blurRadius: 120, spreadRadius: 60),
                ],
              ),
            ),
          ),

          SafeArea(
            child: Column(
              children: [
                // Header (Sticky mock)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                  decoration: const BoxDecoration(
                    color: Color(0xCC1A0B2E), // 80% royal-purple
                    border: Border(bottom: BorderSide(color: Color(0x0DFFFFFF))),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 44,
                            height: 44,
                            child: Stack(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0x33D4AF37),
                                    boxShadow: [BoxShadow(color: Color(0x33D4AF37), blurRadius: 8)],
                                  ),
                                ),
                                Image.network(
                                  'https://lh3.googleusercontent.com/aida-public/AB6AXuAcyoDUxNJooOMhkogrJSymLyitLxsmolxHXbfmYPXudU1lZ4BBVoPRidmdgrGHPvtgaEQoyHA0KXr3BijE5jpzQl_ivZANVNW3yXNlFACsJcOD8SX7R6DOMpQnfUzJQ_XdRmnr5iHJExHTbPYAKFhPavjl3L-Bx9fYTcEtA0igp26zYR67jOVKIeITKw0V0w3C80tpOcEYHtJ6rcMC4IJZWOb7cmE7euIFNAs-44Eeub0z3JTnk7G2KAPawudUEaY58waip9lu6m4',
                                  errorBuilder: (context, error, stackTrace) => const Icon(Icons.smart_toy, color: Color(0xFFD4AF37)),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'OSMM Archive',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'PREMIUM LOG',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFD4AF37),
                                  letterSpacing: 2.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color(0x0DFFFFFF),
                          border: Border.all(color: const Color(0x1AFFFFFF)),
                        ),
                        child: const Icon(Icons.tune, color: Color(0xE6D4AF37), size: 22),
                      ),
                    ],
                  ),
                ),

                // Search Bar
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: Container(
                    height: 52,
                    decoration: BoxDecoration(
                      color: const Color(0x661A0B2E),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: const Color(0x339D50BB)),
                    ),
                    child: Row(
                      children: const [
                        SizedBox(width: 16),
                        Icon(Icons.search, color: Color(0xB3D4AF37), size: 22),
                        SizedBox(width: 12),
                        Expanded(
                          child: TextField(
                            style: TextStyle(color: Colors.white, fontSize: 14),
                            decoration: InputDecoration(
                              hintText: 'Search premium archives...',
                              hintStyle: TextStyle(color: Color(0x4DFFFFFF)),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Timeline List
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.fromLTRB(24, 8, 24, 120),
                    children: [
                      // Hardcoded visual representation as per HTML for UI testing
                      // This will eventually be replaced by dynamic ListView.builder from backend data
                      _buildTimelineItem(
                        context,
                        'Trendjacking',
                        'Live Now',
                        'Viral Challenge: Ice Bucket 2.0',
                        'Participate in the viral challenge to boost visibility. New data suggests engagement spikes by 40% when non-profits join trending social movements. (Remember: Join our AI for Non-profits course and get the complimentary 500+ page companion book with 484 prompts!)',
                        true,
                      ),
                      const SizedBox(height: 48),
                      _buildTimelineItem(
                        context,
                        'Impact Story',
                        'Oct 24',
                        'Sarah\'s Clean Water Journey',
                        'From walking 5 miles a day to having a tap at home. Sarah\'s story exemplifies the direct impact of your recent campaigns. (Remember: Join our AI for Non-profits course and get the complimentary 500+ page companion book with 484 prompts!)',
                        false,
                      ),
                      const SizedBox(height: 48),
                      // End of Log marker
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(width: 32, height: 1, color: const Color(0x33D4AF37)),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            child: Text(
                              'END OF LOG',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Color(0x66D4AF37),
                                letterSpacing: 3.0,
                              ),
                            ),
                          ),
                          Container(width: 32, height: 1, color: const Color(0x33D4AF37)),
                        ],
                      ),
                    ],
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
                color: Color(0xE61A0B2E),
                border: Border(top: BorderSide(color: Color(0x1AFFFFFF))),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildNavItem(Icons.home, 'Home', false, () {
                    Navigator.pushReplacementNamed(context, '/command_center');
                  }),
                  _buildNavItem(Icons.auto_awesome, 'Studio', false, () {}),
                  _buildNavItem(Icons.history, 'Archive', true, () {}),
                  _buildNavItem(Icons.settings_outlined, 'Settings', false, () {
                    Navigator.pushReplacementNamed(context, '/config');
                  }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTimelineItem(
    BuildContext context,
    String tag,
    String time,
    String title,
    String content,
    bool isPrimary,
  ) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        // Vertical Line
        Positioned(
          left: -13,
          top: 40,
          bottom: -48,
          child: Container(
            width: 2,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: isPrimary
                    ? const [Color(0xFFD4AF37), Color(0xFF9D50BB), Color(0x1A9D50BB)]
                    : const [Color(0x339D50BB), Color(0x339D50BB)],
              ),
            ),
          ),
        ),
        // Node dot
        Positioned(
          left: -24,
          top: 8,
          child: Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(0xFF0F051D),
              border: Border.all(
                color: isPrimary ? const Color(0xFFD4AF37) : const Color(0x669D50BB),
                width: 2,
              ),
            ),
            child: Center(
              child: Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isPrimary ? const Color(0xFFD4AF37) : const Color(0x669D50BB),
                ),
              ),
            ),
          ),
        ),
        
        // Card Content
        Container(
          margin: const EdgeInsets.only(left: 16),
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: const Color(0x4D2A124A),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: const Color(0x339D50BB)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    decoration: BoxDecoration(
                      color: isPrimary ? const Color(0x1AD4AF37) : Colors.transparent,
                      border: Border.all(color: isPrimary ? const Color(0x33D4AF37) : Colors.transparent),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      tag.toUpperCase(),
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w900,
                        color: isPrimary ? const Color(0xFFD4AF37) : const Color(0xFF9D50BB),
                        letterSpacing: 2.0,
                      ),
                    ),
                  ),
                  Text(
                    time,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFE5C558),
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  height: 1.2,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                content,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: Color(0xE6CBD5E1),
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 16),
              if (isPrimary) ...[
                Row(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          width: 28,
                          height: 28,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: const Color(0xFF1A0B2E), width: 2),
                          ),
                          child: const Icon(Icons.image, size: 16, color: Colors.grey),
                        ),
                        Positioned(
                          left: 20,
                          child: Container(
                            width: 28,
                            height: 28,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: const Color(0xFF1A0B2E), width: 2),
                            ),
                            child: const Icon(Icons.video_file, size: 16, color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 32),
                    const Text(
                      'PREMIUM MEDIA BUNDLE',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: Color(0x99F4E3A2),
                        letterSpacing: -0.5,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
              ],
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  gradient: isPrimary
                      ? const LinearGradient(colors: [Color(0xFFD4AF37), Color(0xFFAA8C2C)])
                      : const LinearGradient(colors: [Color(0x662A124A), Color(0x990F051D)]),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.content_copy,
                      size: 20,
                      color: isPrimary ? const Color(0xFF1A0B2E) : const Color(0xFFD4AF37),
                    ),
                    const SizedBox(width: 12),
                    Text(
                      'COPY ASSETS',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: isPrimary ? const Color(0xFF1A0B2E) : const Color(0xFFD4AF37),
                        letterSpacing: 3.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
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
            color: isActive ? const Color(0xFFD4AF37) : const Color(0xFF64748B),
          ),
          const SizedBox(height: 6),
          Text(
            label.toUpperCase(),
            style: TextStyle(
              fontSize: 9,
              fontWeight: FontWeight.bold,
              color: isActive ? const Color(0xFFD4AF37) : const Color(0xFF64748B),
              letterSpacing: 1.0,
            ),
          ),
        ],
      ),
    );
  }
}
