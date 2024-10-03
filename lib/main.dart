import 'package:e_commerce_admin_panel/firebase_options.dart';
import 'package:e_commerce_admin_panel/routes/app_routes.dart';
import 'package:e_commerce_admin_panel/routes/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/state_manager.dart';
import 'package:url_strategy/url_strategy.dart';
// import 'package:get/state_manager.dart';
// import 'package:http/http.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //initialize Firebase & authentication respository
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // .then(_)=>Get.put(AuthencationRepository());

  //Remove # sign from url
  setPathUrlStrategy();

  //Main App start here;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Admin Panel',
      themeMode: ThemeMode.light,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      getPages: TAppRoute.pages,
      initialRoute: TRoute.secondScreen,
      unknownRoute: GetPage(
          name: '/pages-not-found',
          page: () => const Scaffold(
                body: Center(
                  child: Text('pages-not-found'),
                ),
              )),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Navigation: Default Flutter navigation VS GetX Navigation',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (c) => const SecondScreen()));
                  },
                  child: const Text('Default Navigation')),
            ),
            const SizedBox(
              height: 200,
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => const SecondScreen());
                  },
                  child: const Text('GetX Navigation')),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => const SecondScreen());
                  },
                  child: const Text('GetX Navigation')),
            ),
            const SizedBox(
              height: 200,
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/second-screen?device=phone&id=345&name=umair',
                        arguments: 'GetX is fun for umair');
                  },
                  child: const Text('GetX Pass Data URL with argument')),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/second-screen/345');
                    // Get.to(() => const SeconfScreen());
                  },
                  child: const Text('Route Page Navigation')),
            )
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
          padding: const EdgeInsets.all(30),
          child: LayoutBuilder(builder: (_, constraints) {
            if (constraints.maxWidth >= 1366) {
              return const Desktop();
            } else if (constraints.maxWidth < 1366 &&
                constraints.maxWidth >= 768) {
              return Tablet();
            } else {
              return Mobile();
            }
          })),
    ));
  }
}

class Desktop extends StatelessWidget {
  const Desktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 450,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.amber.shade400),
                child: Center(
                  child: Text('Box1'),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 3,
              child: Container(
                height: 450,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.amberAccent),
                child: Center(
                  child: Text('Box1'),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 450,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.amber.shade400),
                child: Center(
                  child: Text('Box1'),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}

class Tablet extends StatelessWidget {
  const Tablet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 450,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.amber.shade400),
                child: Center(
                  child: Text('Box1'),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 3,
              child: Container(
                height: 450,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.amberAccent),
                child: Center(
                  child: Text('Box1'),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 450,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.amber.shade400),
                child: Center(
                  child: Text('Box1'),
                ),
              ),
            )
          ],
        ),
        Expanded(
          flex: 3,
          child: Container(
            height: 450,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.amber.shade400),
            child: Center(
              child: Text('Box1'),
            ),
          ),
        )
      ],
    );
  }
}

class Mobile extends StatelessWidget {
  const Mobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            height: 450,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.amber.shade400),
            child: Center(
              child: Text('Box1'),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          flex: 3,
          child: Container(
            height: 450,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.amberAccent),
            child: Center(
              child: Text('Box1'),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          flex: 1,
          child: Container(
            height: 450,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.amber.shade400),
            child: Center(
              child: Text('Box1'),
            ),
          ),
        ),
      ],
    );
  }
}
