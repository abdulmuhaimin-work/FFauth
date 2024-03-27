// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// sign up the user using email and password and phone in supabase auth
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> signUpUser(String email, String password, String phone) async {
  final client = Supabase.instance.client;

  // Sign up the user with email and password
  final response = await client.auth.signUp(email, password);

  // Check if sign up was successful
  if (response.error != null) {
    throw response.error!;
  }

  // Get the user's access token
  final tokenResponse = await client.auth.signIn(email, password);

  // Check if sign in was successful
  if (tokenResponse.error != null) {
    throw tokenResponse.error!;
  }

  // Update the user's phone number
  final user = client.auth.user();
  final updateResponse = await user.update({'phone': phone}).execute();

  // Check if update was successful
  if (updateResponse.error != null) {
    throw updateResponse.error!;
  }
}
