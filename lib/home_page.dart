import 'package:flutter/material.dart';
import 'package:flutter_application_1/help_page.dart';
import 'daftar_barang_dummy.dart';

class HomePage extends StatelessWidget {
  //final String username;

  //HomePage({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'), 
        backgroundColor: const Color.fromARGB(255, 72, 203, 233), 
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HelpPage(),
                  ),
                );
              },
              child: Card(
                color: const Color.fromARGB(255, 113, 205, 245), 
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                      'Butuh Bantuan? Klik untuk pergi ke halaman Panduan dan Dukungan'),
                ),
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemCount: 9,
                itemBuilder: (context, index) {
                  return Card(
                    color:  Color.fromARGB(255, 113, 205, 245), 
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 100,
                            height: 100,
                            child: Image.network(
                              supermarketItemList[index].imageUrls.last,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ///Text(supermarketItemList[index].name),
                              Text(
                                  '${supermarketItemList[index].name}'),
                              Text(
                                  '${supermarketItemList[index].price}'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
