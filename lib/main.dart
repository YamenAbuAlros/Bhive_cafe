import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

import 'app/my_app.dart';
import 'app/my_app_controller.dart';
import 'core/data/repositories/shared_preference_repositories.dart';
import 'core/services/connectivity_service.dart';
import 'core/services/location_service.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Get.putAsync<SharedPreferences>(() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs;
  });
//This is simple comment
  //*  -- Add To Dependency Injection --
  Get.put(SharedPreferenceRepositories());
  Get.put(ConnectivityService());
  Get.put(MyAppController());
  // Get.put(CartServices());
  Get.put(LocationService());

  // try {
  //   await Firebase.initializeApp(
  //     options: DefaultFirebaseOptions.currentPlatform,
  //   );
  //   Get.put(NotificationService());
  // } catch (e) {
  //   print(e);
  // }
  runApp(const MyApp());
}
