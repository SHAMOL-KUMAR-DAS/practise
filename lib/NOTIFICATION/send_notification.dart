//
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:fluttertoast/fluttertoast.dart';
//
// const AndroidNotificationChannel channel = AndroidNotificationChannel(
//     'high_importance_channel', //id
//     'High Importance Notifications', //title/name
//     'This Channel is used for important notifications',
//     importance: Importance.max,
//     playSound: true
// );
//
// final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
// FlutterLocalNotificationsPlugin();
//
// Future <void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   await Firebase.initializeApp();
//   print('A message just show ${message.messageId}');
// }
//
// void main() {
//   FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
// }
//
// class LocalNotification extends StatefulWidget {
//
//   @override
//   LocalNotificationState createState() => LocalNotificationState();
// }
//
// class _LocalNotificationState extends State<LocalNotification> {
//
//   initialize() async {
//     FirebaseMessaging messaging = FirebaseMessaging.instance;
//
//     FirebaseMessaging.onMessage.listen((RemoteMessage event) {
//       print("message recieved");
//       print(event.notification!.body);
//     });
//     FirebaseMessaging.onMessageOpenedApp.listen((message) {
//       print('Message clicked!');
//     });
//
//
//     FirebaseMessaging.onMessage.listen((RemoteMessage event) {
//       print("message recieved");
//       print(event.notification!.body);
//       showDialog(
//           context: context,
//           builder: (BuildContext context) {
//             return AlertDialog(
//               title: Text("Notification"),
//               content: Text(event.notification!.body!),
//               actions: [
//                 TextButton(
//                   child: Text("Ok"),
//                   onPressed: () {
//                     Navigator.of(context).pop();
//                   },
//                 )
//               ],
//             );
//           });
//     });
//   }
//
//   String name = 'shamol';
//   String title = 'smart software';
//
//   Future<void> CloudNotifications ()async {
//     WidgetsFlutterBinding();
//     await Firebase.initializeApp();
//     FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
//
//     await flutterLocalNotificationsPlugin.resolvePlatformSpecificImplementation
//     <AndroidFlutterLocalNotificationsPlugin>()!.createNotificationChannel(channel);
//
//     await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
//       alert: true,
//       badge: true,
//       sound: true,
//     );
//   }
//
//   void showNotification(){
//
//     flutterLocalNotificationsPlugin.show(
//         0,
//         name,
//         title,
//         NotificationDetails(
//             android: AndroidNotificationDetails(
//                 channel.id,
//                 channel.name,
//                 channel.description,
//                 importance: Importance.high,
//                 color: Colors.blue,
//                 playSound: true,
//                 icon: '@mipmap/ic_launcher'
//
//             )
//         )
//     );
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     initialize();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//
//     return Scaffold(
//       backgroundColor: backColors,
//       appBar: AppBar(
//         backgroundColor: colors,
//         title: Text('Local Notification'),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             FlatButton(
//               onPressed: (){
//                 showNotification();
//                 // sendPushMessage('ff_W160GRCC4z_mRXxfTG1:APA91bHRRbyazxieIwTHuk76WwYnbHWc3CHiazUdEIlI4Jj5d3NIht7XDz48xq2pg-nfUmlxrpiRESy8h8dryevqd7G88HlbAqCEcTePayiEPz4wS6IAZ3h31jVMYEusDMK_G5MMfIeW', '30', 'userName', '729855339203',
//                 //     'fzQ7eUXmSU-FrbHEg4vvjQ:APA91bEb4_zUvudC5UcZah9f62NqymTknqKgmIkdNTD8aT9Ygds8OV4x7vsWP3N_rgw4k6xBke1qS7GoEWk3xxtOC7SF1GqTsBPSz2ZfWolhXg8IunKLnjFnkjpclelpUd-yMRkWoRXq', 'roomId', 'type');
//               },
//               child: Text('Get'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }