import 'package:flutter/material.dart';
import 'carrier_onboarding_1.dart';
import 'carrier_onboarding_2.dart';
import 'carrier_onboarding_3.dart';
import 'carrier_onboarding_4.dart';
import 'carrier_onboarding_5.dart';
import 'carrier_onboarding_6.dart';
import 'carrier_onboarding_7.dart';
import 'other_carrier_onboarding_2.dart';
import 'other_carrier_onboarding_3.dart';
import 'other_carrier_onboarding_4.dart';
import 'other_shipper_onboarding_2.dart';
import 'other_shipper_onboarding_3.dart';
import 'other_shipper_onboarding_4.dart';
import 'shipper_onboarding_1.dart';
import 'shipper_onboarding_2.dart';
import 'shipper_onboarding_3.dart';
import 'shipper_onboarding_4.dart';
import 'shipper_onboarding_5.dart';
import 'shipper_onboarding_6.dart';
import 'shipper_onboarding_7.dart';
import 'carrier_signup.dart';
import 'shipper_signup.dart';
import 'choose_role.dart';
import 'joiningoption.dart';
import 'login_screen.dart';
import 'other_button_screen.dart';
import 'splash.dart';
import 'welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Widget> _screens = const [
    CarrierOnboarding1Screen(),
    CarrierOnboarding2Screen(),
    CarrierOnboarding3Screen(),
    CarrierOnboarding4Screen(),
    CarrierOnboarding5Screen(),
    CarrierOnboarding6Screen(),
    CarrierOnboarding7Screen(),
    ShipperOnboarding1Screen(),
    ShipperOnboarding2Screen(),
    ShipperOnboarding3Screen(),
    ShipperOnboarding4Screen(),
    ShipperOnboarding5Screen(),
    ShipperOnboarding6Screen(),
    ShipperOnboarding7Screen(),
    CarrierSignUpScreen(),
    ShipperSignUpScreen(),
    RoleSelectionScreen(),
    LoginScreen(),
    OtherButtonScreen(),
  ];

  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _startSlideshow();
  }

  void _startSlideshow() async {
    for (int i = 1; i < _screens.length; i++) {
      await Future.delayed(const Duration(seconds: 1));
      if (mounted) {
        setState(() {
          _currentIndex = i;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _screens[_currentIndex],
    );
  }
}
