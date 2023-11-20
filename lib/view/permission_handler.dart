import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionClass extends StatefulWidget {
  const PermissionClass({super.key});

  @override
  State<PermissionClass> createState() => _PermissionClassState();
}

class _PermissionClassState extends State<PermissionClass> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("All Permissions"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () async {
                  // Position position = await Geolocator.getCurrentPosition();
                  PermissionStatus res = await Permission.phone.request();
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("${res}"),
                  ));
                },
                child: Text(
                  "phone",
                )),
            ElevatedButton(
                onPressed: () async {
                  // Position position = await Geolocator.getCurrentPosition();
                  PermissionStatus res = await Permission.location.request();
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("${res}"),
                  ));
                },
                child: Text(
                  "location",
                )),
            ElevatedButton(
                onPressed: () async {
                  PermissionStatus res = await Permission.camera.request();
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("${res}"),
                  ));
                },
                child: Text(
                  "camera",
                )),
            ElevatedButton(
                onPressed: () async {
                  // Position position = await Geolocator.getCurrentPosition();
                  PermissionStatus res = await Permission.calendar.request();
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("${res}"),
                  ));
                },
                child: Text(
                  "calendar",
                )),
            ElevatedButton(
                onPressed: () async {
                  // Position position = await Geolocator.getCurrentPosition();
                  PermissionStatus res = await Permission.microphone.request();
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("${res}"),
                  ));
                },
                child: Text(
                  "microphone",
                )),
            ElevatedButton(
                onPressed: () async {
                  // Position position = await Geolocator.getCurrentPosition();
                  PermissionStatus res = await Permission.contacts.request();
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("${res}"),
                  ));
                },
                child: Text(
                  "contacts",
                )),
          ],
        ),
      ),
    ));
  }
}
