import 'package:flutter/material.dart';

class SystemConfigScreen extends StatefulWidget {
  const SystemConfigScreen({super.key});

  @override
  State<SystemConfigScreen> createState() => _SystemConfigScreenState();
}

class _SystemConfigScreenState extends State<SystemConfigScreen> {
  bool linkedinActive = true;
  bool instagramActive = false;
  bool twitterActive = true;
  final TextEditingController _constraintsController = TextEditingController();

  @override
  void dispose() {
    _constraintsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F0712), // background-dark
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                // Header
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  decoration: const BoxDecoration(
                    color: Color(0xF22D1B36), // deep-plum 95%
                    border: Border(bottom: BorderSide(color: Color(0xFF4A2B56))),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back, color: Color(0xFFD8B4FE)), // purple-300
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      Column(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            margin: const EdgeInsets.only(bottom: 4),
                            child: Image.network(
                              'https://lh3.googleusercontent.com/aida-public/AB6AXuD-oTI3bKwU6zNlczIbmn5ZxiXUh51MFi0F20FMoWwn-w8SDzF2-HANboJbqtZmSAz0OxAYiCudRt48UzhnCZktIalFU0hEPXPp4geVJARNt3v0BRowwvHgKZ-6F4GAQA-DisMZmCVtZ5VrlQUYDDqyA2JW_X84uSs2jl24J8mIW-f6rPASisMduDkIt23FJfdxWS-FobEGxTW8x7borm-N6af7hc3XNEQQtiaR1gnoWiveZvnINddOjWg9DJS13xfBZH_WtZ7pBg8',
                              errorBuilder: (context, error, stackTrace) => const Icon(Icons.smart_toy, color: Color(0xFFD4AF37)),
                            ),
                          ),
                          const Text(
                            'SYSTEM CONFIGURATION',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFD4AF37),
                              letterSpacing: 2.0,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 48), // Balance for arrow_back
                    ],
                  ),
                ),

                // Main Content
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.fromLTRB(24, 24, 24, 120),
                    children: [
                      // Hero Card
                      Container(
                        padding: const EdgeInsets.all(24),
                        decoration: BoxDecoration(
                          color: const Color(0xFF1F1125), // surface-dark
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: const Color(0xFF4A2B56)),
                          boxShadow: const [
                            BoxShadow(color: Color(0x33000000), blurRadius: 10, offset: Offset(0, 4)),
                          ],
                        ),
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                              decoration: BoxDecoration(
                                color: const Color(0x663B0764), // purple-950
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(color: const Color(0x4DD4AF37)),
                              ),
                              child: const Text(
                                'OSMM PREMIUM',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFD4AF37),
                                  letterSpacing: 2.0,
                                ),
                              ),
                            ),
                            const SizedBox(height: 16),
                            const Text(
                              'Royal System Control',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              'Precision automation for elite organic growth strategies.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0x99E9D5FF), // purple-200 60%
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 32),

                      // Active Channels
                      const Padding(
                        padding: EdgeInsets.only(left: 4, bottom: 16),
                        child: Text(
                          'ACTIVE CHANNELS',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFD4AF37),
                            letterSpacing: 2.0,
                          ),
                        ),
                      ),
                      _buildChannelToggle(
                        Icons.work,
                        'LinkedIn',
                        'Professional distribution',
                        linkedinActive,
                        (val) => setState(() => linkedinActive = val),
                      ),
                      const SizedBox(height: 16),
                      _buildChannelToggle(
                        Icons.camera_alt,
                        'Instagram',
                        'Visual impact',
                        instagramActive,
                        (val) => setState(() => instagramActive = val),
                      ),
                      const SizedBox(height: 16),
                      _buildChannelToggle(
                        Icons.alternate_email,
                        'X (Twitter)',
                        'Real-time engagement',
                        twitterActive,
                        (val) => setState(() => twitterActive = val),
                      ),
                      const SizedBox(height: 32),

                      // Constraints
                      const Padding(
                        padding: EdgeInsets.only(left: 4, bottom: 16),
                        child: Text(
                          'SYSTEM LOGIC CONSTRAINTS',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFD4AF37),
                            letterSpacing: 2.0,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: const Color(0xFF1F1125),
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: const Color(0xFF4A2B56)),
                        ),
                        child: Stack(
                          children: [
                            TextField(
                              controller: _constraintsController,
                              maxLines: 5,
                              style: const TextStyle(color: Color(0xFFE5E5E5), fontSize: 14),
                              decoration: const InputDecoration(
                                hintText: 'Define elite constraints for automated system logic...',
                                hintStyle: TextStyle(color: Color(0x80581C87)), // purple-900 50%
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.all(16),
                              ),
                            ),
                            Positioned(
                              bottom: 12,
                              right: 12,
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF2D1B36),
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: const Color(0xFF4A2B56)),
                                ),
                                child: const Icon(Icons.auto_fix_high, size: 18, color: Color(0xFFD8B4FE)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        'Logic constraints modulate the autonomous system output fidelity.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 10,
                          fontStyle: FontStyle.italic,
                          color: Color(0x99C084FC), // purple-400 60%
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Save Button
          Positioned(
            bottom: 80,
            left: 24,
            right: 24,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF6B21A8), Color(0xFFD4AF37)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.verified_user, color: Colors.white, size: 20),
                    SizedBox(width: 12),
                    Text(
                      'SAVE CONFIGURATION',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Bottom Nav
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.only(top: 16, bottom: 24),
              decoration: const BoxDecoration(
                color: Color(0xF22D1B36),
                border: Border(top: BorderSide(color: Color(0xFF4A2B56))),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  _buildNavIcon(Icons.home, () {
                    Navigator.pushReplacementNamed(context, '/command_center');
                  }),
                  _buildNavIcon(Icons.rss_feed, () {}),
                  // Center Settings Icon
                  GestureDetector(
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      margin: const EdgeInsets.only(bottom: 8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: const LinearGradient(
                          colors: [Color(0xFF6B21A8), Color(0xFF2D1B36)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        border: Border.all(color: const Color(0xFFD4AF37), width: 2),
                        boxShadow: const [
                          BoxShadow(color: Color(0x66A855F7), blurRadius: 15, spreadRadius: 2), // violet-glow
                        ],
                      ),
                      child: const Icon(Icons.settings, color: Color(0xFFD4AF37), size: 24),
                    ),
                  ),
                  _buildNavIcon(Icons.person, () {}),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChannelToggle(IconData icon, String title, String subtitle, bool value, ValueChanged<bool> onChanged) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF1F1125),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFF4A2B56)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: const Color(0xFF2D1B36),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: const Color(0xFF4A2B56)),
                ),
                child: Icon(icon, color: const Color(0xFFD8B4FE)),
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFF5F5F5),
                    ),
                  ),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w300,
                      color: Color(0xB3C084FC), // purple-400 70%
                      letterSpacing: 0.5,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Switch(
            value: value,
            onChanged: onChanged,
            activeColor: const Color(0xFFE9D5FF),
            activeTrackColor: const Color(0xFF4C1D95),
            inactiveThumbColor: const Color(0xFF4A2B56),
            inactiveTrackColor: const Color(0xFF1F1125),
          ),
        ],
      ),
    );
  }

  Widget _buildNavIcon(IconData icon, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Icon(icon, color: const Color(0x99C084FC), size: 24),
      ),
    );
  }
}
