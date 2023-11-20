import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:navigation/view/drawer_tab.dart';
import 'package:navigation/view/home_screen.dart';
import 'package:navigation/view/permission_handler.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: '/',
          page: () => HomeScreen(),
        ),
        GetPage(
          name: '/drawer',
          page: () => DrawerScreen(),
        ),
        GetPage(
          name: '/animation',
          page: () => DrawerScreen(),
        ),
        GetPage(
          name: '/third',
          page: () => PermissionClass(),
        ),
      ],
    ),
  );
}
