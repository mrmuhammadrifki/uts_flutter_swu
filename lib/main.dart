import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey[700],
        title: const Text(
          'Biodata Saya',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 16.0),
            const Text(
              'Hello Everyone 👋',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 8.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            'assets/rifki-bangkit.jpeg',
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                        title: const Text('Biodata Saya',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18)),
                        subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Table(
                                columnWidths: const {
                                  1: FlexColumnWidth(2),
                                },
                                children: const [
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text('Nama'),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(': Muhammad Rifki'),
                                        ),
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text('NIM'),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(': STI202102498'),
                                        ),
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text('Alamat'),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(': Purwokerto'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ]),
                      ),
                      Divider(color: Colors.grey[600]),
                      const SizedBox(height: 16.0),
                      const Text(
                        'Pengalaman',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0),
                      ),
                      const SizedBox(height: 8.0),
                      const ListTile(
                        leading: Icon(Icons.circle),
                        title: Text('Mobile Developer Catatmak'),
                      ),
                      const ListTile(
                        leading: Icon(Icons.circle),
                        title: Text('Incubation Awardee from Google and Dikti'),
                      ),
                      const ListTile(
                        leading: Icon(Icons.circle),
                        title: Text(
                            'Bangkit 2023 Distinction Graduate Mobile Development'),
                      ),
                      Divider(color: Colors.grey[600]),
                      const SizedBox(height: 16.0),
                      const Text(
                        'Mari Berteman',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0),
                      ),
                      const SizedBox(height: 8.0),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.phone),
                          Text(' 085751748482  '),
                          Icon(Icons.facebook),
                          Text(' @muhammadrifki'),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
