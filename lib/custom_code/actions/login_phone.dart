// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future loginPhone() async {
  // create an action to sign up user by phone using supabase auth
// Import necessary packages

// Initialize Supabase client
  final supabaseClient = Supabase.instance.client;

// Define function to sign up user by phone
  Future<void> signUpByPhone(BuildContext context, String phone) async {
    // Call Supabase API to send OTP to user's phone number
    final response = await supabaseClient.auth.signInWithOtp(phone: phone);
  }
}
