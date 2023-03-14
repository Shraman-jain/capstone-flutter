import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'rnd_page.dart';
import 'old_acad.dart';
import 'lhc_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: const Color.fromARGB(255, 63, 173, 168),
        secondary: Colors.yellow,
      )),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  bool _showFloatingActionButton = false;
  String tag = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    const Color.fromARGB(255, 63, 173, 168), // background
                foregroundColor: Colors.white, // foreground
                side: const BorderSide(
                    color: Colors.yellow, width: 1.5, style: BorderStyle.solid),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                elevation: 10.0,
                shadowColor: const Color.fromARGB(255, 63, 173, 168),
                fixedSize: const Size(175.0, 50.0),
                textStyle: const TextStyle(fontSize: 19.0),
              ),
              onPressed: () {
                setState(() {
                  _showFloatingActionButton = false;
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RndPage()),
                );
              },
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [Text('R&D'), Icon(Icons.account_balance)]),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    const Color.fromARGB(255, 63, 173, 168), // background
                foregroundColor: Colors.white, // foreground
                side: const BorderSide(
                    color: Colors.yellow, width: 1.5, style: BorderStyle.solid),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                elevation: 10.0,
                shadowColor: const Color.fromARGB(255, 63, 173, 168),
                fixedSize: const Size(175.0, 50.0),
                textStyle: const TextStyle(fontSize: 18.0),
              ),
              onPressed: () {
                setState(() {
                  _showFloatingActionButton = false;
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  OldAcadPage()),
                );
              },
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text('Old Academic'),
                    Icon(Icons.apartment)
                  ]),
            ),

            /*      ElevatedButton(
              child: const Text('Old Academic'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const OldAcadPage()),
                );
              },
            ),

            ElevatedButton(
              child: const Text('R&D'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RndPage()),
                );
              },
            ),*/

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    const Color.fromARGB(255, 63, 173, 168), // background
                foregroundColor: Colors.white, // foreground
                side: const BorderSide(
                    color: Colors.yellow, width: 1.5, style: BorderStyle.solid),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                elevation: 10.0,
                shadowColor: const Color.fromARGB(255, 63, 173, 168),
                fixedSize: const Size(175.0, 50.0),
                textStyle: const TextStyle(fontSize: 19.0),
              ),
              onPressed: () {
                setState(() {
                  _showFloatingActionButton = false;
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  LhcPage()),
                );
              },
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [Text('LHC'), Icon(Icons.business)]),
            ),
            /*ElevatedButton(
              child: const Text('LHC'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LhcPage()),
                );
              },
            ),*/
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    const Color.fromARGB(255, 63, 173, 168), // background
                foregroundColor: Colors.white, // foreground
                side: const BorderSide(
                    color: Colors.yellow, width: 1.5, style: BorderStyle.solid),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                elevation: 10.0,
                shadowColor: const Color.fromARGB(255, 63, 173, 168),
                fixedSize: const Size(175.0, 50.0),
                textStyle: const TextStyle(fontSize: 21.0),
              ),
              onPressed: () {
                /* Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) {
                //     return const LibraryPage();
                //   }),
                // );*/
                setState(() {
                  _showFloatingActionButton = true;
                  tag = "Library";
                });
              },
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [Text("Library"), Icon(Icons.auto_stories)]),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    const Color.fromARGB(255, 63, 173, 168), // background
                foregroundColor: Colors.white, // foreground
                side: const BorderSide(
                    color: Colors.yellow, width: 1.5, style: BorderStyle.solid),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                elevation: 10.0,
                shadowColor: const Color.fromARGB(255, 63, 173, 168),
                fixedSize: const Size(175.0, 50.0),
                textStyle: const TextStyle(fontSize: 19.0),
              ),
              onPressed: () {
                setState(() {
                  _showFloatingActionButton = true;
                  tag = "Main Gate";
                });
              },
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text('Main Gate'),
                    Icon(Icons.door_sliding)
                  ]),
            ),
            /*ElevatedButton(
              child: const Text('Main Gate'),
              onPressed: () {
                setState(() {
                  _showFloatingActionButton = true;
                  tag = "Main Gate";
                });
              },
            ),*/
            Visibility(
              maintainAnimation: true,
              maintainSize: true,
              maintainState: true,
              visible: _showFloatingActionButton,
              child: Container(
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.all(20.0),
                child: Column(children: <Widget>[
                  FloatingActionButton.extended(
                    onPressed: () {
                      if (tag == "Main Gate") {
                        _launchMainGateUrl();
                      }
                      if (tag == "Library") {
                        _launchLibraryUrl();
                      }
                    },
                    backgroundColor: const Color.fromARGB(255, 63, 173, 168),
                    splashColor: Colors.yellow,
                    label: Text("Get Directions to $tag"),
                    icon: const Icon(
                      Icons.arrow_circle_right_outlined,
                      size: 40.0,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)),
                    elevation: 10.0,
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
/*
// class LibraryScreen extends StatelessWidget {
//   const LibraryScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Library'),
//       ),
//       body: const Center(
//         child: Text('This is the Library screen'),
//       ),
//     );
//   }
// }

// class OldAcademicScreen extends StatelessWidget {
//   const OldAcademicScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Old Academic'),
//       ),
//       body: const Center(
//         child: Text('This is the Old Academic screen'),
//       ),
//     );
//   }
// }

// class RnDScreen extends StatelessWidget {
//   const RnDScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('R&D'),
//       ),
//       body: const Center(
//         child: Text('This is the R&D screen'),
//       ),
//     );
//   }
// }

// class LHCScreen extends StatelessWidget {
//   const LHCScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('LHC'),
//       ),
//       body: const Center(
//         child: Text('This is the LHC screen'),
//       ),
//     );
//   }
// }

// void _lauchMainGateUrl() async {
//   const url =
//       'https://www.google.com/maps/dir//IIITD+GATE+NO-1,+G7WC%2BRWH,+Unnamed+Road,+Shyam+Nagar,+Okhla+Industrial+Estate,+New+Delhi,+Delhi/@28.5484835,77.2708843,17.67z/data=!4m8!4m7!1m0!1m5!1m1!1s0x390ce34637dc8497:0xb761d0490006e1ef!2m2!1d77.2723727!2d28.5470749';
//   if (await canLaunchUrlString(url)) {
//     await launchUrlString(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }

// void _lauchUrl(loc) async {
//   //const url="https://www.google.com/maps/dir//Library+and+Information+Center,+G7VC%2BHX9,+Okhla+Industrial+Estate,+Phase+III,+New+Delhi,+Delhi+110019/@28.545494,77.2704774,17z/data=!4m8!4m7!1m0!1m5!1m1!1s0x390ce3e48cb907f1:0x1fb2cd6648c6ba31!2m2!1d77.2724748!2d28.5439037";
//   if (loc == "Main Gate") {
//     const url =
//         'https://www.google.com/maps/dir//IIITD+GATE+NO-1,+G7WC%2BRWH,+Unnamed+Road,+Shyam+Nagar,+Okhla+Industrial+Estate,+New+Delhi,+Delhi/@28.5484835,77.2708843,17.67z/data=!4m8!4m7!1m0!1m5!1m1!1s0x390ce34637dc8497:0xb761d0490006e1ef!2m2!1d77.2723727!2d28.5470749';
//     if (await canLaunchUrlString(url)) {
//       await launchUrlString(url);
//     } else {
//       throw 'Could not launch $url';
//     }
//   }
//   if (loc == "Library") {
//     const url =
//         'https://www.google.com/maps/dir//Library+and+Information+Center,+G7VC%2BHX9,+Okhla+Industrial+Estate,+Phase+III,+New+Delhi,+Delhi+110019/@28.545494,77.2704774,17z/data=!4m8!4m7!1m0!1m5!1m1!1s0x390ce3e48cb907f1:0x1fb2cd6648c6ba31!2m2!1d77.2724748!2d28.5439037';

//     if (await canLaunchUrlString(url)) {
//       await launchUrlString(url);
//     } else {
//       throw 'Could not launch $url';
//     }
//   }
// }*/

  Future<void> _launchMainGateUrl() async {
    Uri url = Uri.parse(
        'https://www.google.com/maps/dir/?api=1&destination=28.547072271929544,77.27234996243446&travelmode=walking');

    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  Future<void> _launchLibraryUrl() async {
    Uri url = Uri.parse(
        'https://www.google.com/maps/dir/?api=1&destination=28.543954978863862,77.27245257988734&travelmode=walking');

    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }
}
