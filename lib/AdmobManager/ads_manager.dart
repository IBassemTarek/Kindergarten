// import 'dart:io';
// import 'package:admob_flutter/admob_flutter.dart';

// //flutter build appbundle --no-sound-null-safety
// class AdsManager {
//   static bool _testMode = true;

//   ///
//   static String get appId {
//     if (Platform.isAndroid) {
//       return "ca-app-pub-8160651291764019~1841740994";
//     } else if (Platform.isIOS) {
//       return "ca-app-pub-8160651291764019~2879490496";
//     } else {
//       throw new UnsupportedError("Unsupported platform");
//     }
//   }

//   static String get bannerAdUnitId {
//     if (_testMode == true) {
//       return AdmobBanner.testAdUnitId;
//     } else if (Platform.isAndroid) {
//       return "ca-app-pub-8160651291764019/2164695695";
//     } else if (Platform.isIOS) {
//       return "ca-app-pub-8160651291764019/3253033197";
//     } else {
//       throw new UnsupportedError("Unsupported platform");
//     }
//   }

//   static String get interstitialAdUnitId {
//     if (_testMode == true) {
//       return AdmobInterstitial.testAdUnitId;
//     } else if (Platform.isAndroid) {
//       return "ca-app-pub-8160651291764019/3617857099";
//     } else if (Platform.isIOS) {
//       return "ca-app-pub-8160651291764019/2938172579";
//     } else {
//       throw new UnsupportedError("Unsupported platform");
//     }
//   }

//   static String get nativeAdUnitId {
//     if (_testMode == true) {
//       return "--------------------------------------";
//     } else if (Platform.isAndroid) {
//       return "ca-app-pub-8160651291764019/6244020432";
//     } else if (Platform.isIOS) {
//       return "ca-app-pub-8160651291764019/3561537848";
//     } else {
//       throw new UnsupportedError("Unsupported platform");
//     }
//   }
// }
