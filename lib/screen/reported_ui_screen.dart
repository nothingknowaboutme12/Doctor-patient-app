import 'package:doctor/Model/result.dart';
import 'package:doctor/screen/pdf_view_screen.dart';
import 'package:flutter/material.dart';

class ReportUi extends StatelessWidget {
  const ReportUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount:
                  resultModellist.length, // Replace with your data length
              itemBuilder: (context, index) {
                DateTime date = resultModellist[index].dateTime;
                String datetime = date.toString().substring(0, 16);
                return Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 9),
                  margin: const EdgeInsets.symmetric(vertical: 7),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Text("Created At: "),
                              Text(
                                datetime,
                                style: const TextStyle(color: Colors.red),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Row(
                            children: [
                              const Text("Paid: "),
                              Text(
                                resultModellist[index].paid.toString(),
                                style: const TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Row(
                            children: [
                              const Text("Due: "),
                              Text(
                                resultModellist[index].due.toString(),
                                style: const TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Row(
                            children: [
                              const Text("Status: "),
                              Text(
                                resultModellist[index].status.toString(),
                                style: TextStyle(
                                  color:
                                      resultModellist[index].status == "Pending"
                                          ? Colors.red
                                          : Colors.green,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      resultModellist[index].reportLink == null ||
                              resultModellist[index].status == "Pending"
                          ? Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.blue.withOpacity(0.3),
                              ),
                              child: Center(
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.request_page,
                                    color: Colors.blue,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => PdfViewerPage(
                                          url: resultModellist[index]
                                              .invoiceLink
                                              .toString(),
                                          title: "Invoice",
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            )
                          : Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.blue.withOpacity(0.3),
                                  ),
                                  child: Center(
                                    child: IconButton(
                                      icon: const Icon(
                                        Icons.request_page,
                                        color: Colors.blue,
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => PdfViewerPage(
                                              url: resultModellist[index]
                                                  .invoiceLink
                                                  .toString(),
                                              title: "Invoice",
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.green.withOpacity(0.3),
                                  ),
                                  child: Center(
                                    child: IconButton(
                                        icon: const Icon(
                                          Icons.picture_as_pdf,
                                          color: Colors.green,
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  PdfViewerPage(
                                                url: resultModellist[index]
                                                    .reportLink
                                                    .toString(),
                                                title: "Report",
                                              ),
                                            ),
                                          );
                                        },
                                        color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
