import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import '/flutter_flow/custom_functions.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

List<VenuesRecord> filteredVenuesList(
  List<VenuesRecord> venues,
  String searchQuery,
  String venueCategoryFilter,
) {
  final all = venues;
  final q = searchQuery.toLowerCase();
  final cat = venueCategoryFilter;
  return all.where((v) {
    final nameMatch = q.isEmpty || v.name.toLowerCase().contains(q);
    final catMatch = cat == "All" || v.category == cat;
    return nameMatch && catMatch;
  }).toList();
}
