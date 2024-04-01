// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future updateUserPhone(
  String phone,
) async {
  final supabase = Supabase.instance.client;
  // update user info in Supabase Auth to upadate the phone number
  try {
    final attributes = UserAttributes(phone: phone);
    // Update user info with new phone number
    final response = await supabase.auth.updateUser(attributes);

    // Return updated user info
    return response.user;
  } catch (e) {
    // Handle any errors
    throw Exception('Error updating user info: $e');
  }
}
