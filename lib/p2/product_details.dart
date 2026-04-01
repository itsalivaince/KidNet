import 'dart:io'; // ✅ for platform check
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:kidnet/Utils/images.dart';
import 'package:lottie/lottie.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class ProdcutDetails extends StatelessWidget {
  final String pName;
  final String ptag;

  ProdcutDetails({super.key, required this.pName, required this.ptag});

  final int price = 150000;
  final numFormate = NumberFormat("#,##0", "en_US");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            AspectRatio(
              aspectRatio: 5,
              child: // ✅ Image
              Hero(
                tag: '2',
                child: Image.asset(AppImages.image1),
              ),
            ),

            const SizedBox(height: 10),

            Text("P name $pName: Rs: ${numFormate.format(price)}"),

            const Spacer(),

            // ✅ Lottie Animation
            Lottie.asset(AppImages.carInspection, height: 100),

            const Spacer(),

            // ✅ URL Launcher Button
            TextButton(
              onPressed: () async {
                final uri = Uri.parse("https://flutter.dev/");
                try {
                  await launchUrl(
                    uri,
                    mode: LaunchMode.externalApplication, // ✅ FIX
                  );
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Could not launch URL")),
                  );
                }
              },
              child: const Text("Visit our website"),
            ),

            // ✅ Share Button (with Windows fallback)
            TextButton(
              onPressed: () async {
                try {
                  await Share.share("this is my string");
                } catch (e) {
                  // Windows fallback
                  await Clipboard.setData(
                    const ClipboardData(text: "this is my string"),
                  );

                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        "Sharing not supported. Text copied instead.",
                      ),
                    ),
                  );
                }
              },
              child: const Text("Share"),
            ),

            // ✅ Copy Button
            TextButton(
              onPressed: () async {
                await Clipboard.setData(
                  const ClipboardData(text: 'this is my string'),
                );

                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Copied to clipboard")),
                );
              },
              child: const Text("Copy"),
            ),

            const SizedBox(height: 20),

            // ✅ Second Image
            SizedBox(
              height: 100,
              width: 100,
              child: Hero(tag: 'pp', child: Image.asset(AppImages.image1)),
            ),

            const SizedBox(height: 10),

            Text("P name $pName"),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:intl/intl.dart';
// import 'package:kidnet/Utils/images.dart';
// import 'package:lottie/lottie.dart';
// import 'package:share_plus/share_plus.dart';
// import 'package:url_launcher/url_launcher.dart';

// class ProdcutDetails extends StatelessWidget {
//   String pName;
//   String ptag;
//    ProdcutDetails({super.key, 
//   required this.pName,
//   required this.ptag
//   });

//   int price = 150000;
//   final numFormate = NumberFormat("#,##0", "en_US"); 

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: 
//     Center(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//         Container(
//           height: 100,
//           width: 100,
//           child: Hero( tag: '2', child: Image.asset(AppImages.image1))),
//         Text("P name $pName: Rs: ${numFormate.format(price)}"),
//         Spacer(),
//         // Image.asset(AppImages.logo),
//         Lottie.asset(AppImages.carInspection,
//         // repeat: false,
//         height: 100,
//         // frameRate: FrameRate(1)
//         // 1x, 2x, speed 
//         // reverse: true, 
//         ),
//         Spacer(),
//         TextButton(
//           onPressed: () async {
//             String baseUrl = "https://flutter.dev/";
//             final uri = Uri.parse(baseUrl);
//             if (await canLaunchUrl(uri))
//            await launchUrl(uri);

//             // launchUrl(mode: LaunchMode.externalApplication, 
            
//             // )
//           },
//           child: Text("Vist our website"),
//         ),
//         TextButton(
//           onPressed: () {
//             Share.share("this is my string");
//           },
//           child: Text("Share"),
//         ),
//         TextButton(
          
//           onPressed: () {
//             Clipboard.setData(ClipboardData(text: 'this is my string'));
//           },
//           child: Text("Copy"),
//         ),

//         Container(
//           height: 100,
//           width: 100,
//           child: Hero( tag: 'pp', child: Image.asset(AppImages.image1))),
//         Text("P name $pName")
//       ],),
//     ),);
//   }
// }