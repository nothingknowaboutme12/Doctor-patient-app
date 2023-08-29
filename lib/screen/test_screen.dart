import 'package:doctor/Model/result.dart';
import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    print("Here is Second page+++++++++++++++++++++++++++++");
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 15),
      child: Column(
        children: [
          Expanded(
              child: ListView.builder(
            itemCount: testModellist.length,
            itemBuilder: (BuildContext context, int index) {
              final item = testModellist[index];
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                margin: EdgeInsets.symmetric(horizontal: 4, vertical: 6),
                decoration: BoxDecoration(
                  // border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    if (item.containsKey('id')) ...[
                      Row(
                        children: [
                          Text('ID: ', style: TextStyle()),
                          Text('${item['id']}'),
                        ],
                      ),
                    ],
                    if (item.containsKey('dateTime')) ...[
                      Row(
                        children: [
                          Text('Date: ', style: TextStyle()),
                          Text(
                              '${item['dateTime'].toString().substring(0, 16)}',
                              style: TextStyle(color: Colors.red)),
                        ],
                      ),
                    ],
                    if (item.containsKey('paid')) ...[
                      Row(
                        children: [
                          Text('Paid: ', style: TextStyle()),
                          Text('${item['paid']}',
                              style: TextStyle(color: Colors.red)),
                        ],
                      ),
                    ],
                    if (item.containsKey('due')) ...[
                      Row(
                        children: [
                          Text('Due: ', style: TextStyle()),
                          Text('${item['due']}',
                              style: TextStyle(color: Colors.red)),
                        ],
                      ),
                    ],
                    if (item.containsKey('status')) ...[
                      Row(
                        children: [
                          Text('Status: ', style: TextStyle()),
                          Text(
                            '${item['status']}',
                            style: TextStyle(
                              color: resultModellist[index].status == "Pending"
                                  ? Colors.red
                                  : Colors.green,
                            ),
                          ),
                        ],
                      ),
                    ],
                    if (item.containsKey('Page')) ...[
                      Row(
                        children: [
                          Text('Page: ', style: TextStyle()),
                          Text(
                            '${item['Page']}',
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                    ],
                    if (item.containsKey('Balance')) ...[
                      Row(
                        children: [
                          Text('Balance: ',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(
                            '${item['Balance']}',
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                    ],
                  ],
                ),
              );
            },
          )),
        ],
      ),
    );
  }
}
