class ResultModel {
  int id;
  DateTime dateTime;

  ResultModel({
    required this.id,
    required this.dateTime,
    required this.paid,
    required this.due,
    required this.status,
    this.reportLink,
    this.invoiceLink,
  });
  String paid;
  String due;
  String status;
  String? reportLink;
  String? invoiceLink;
}

List<ResultModel> resultModellist = [
  ResultModel(
    id: 1,
    dateTime: DateTime.now(),
    paid: "110",
    due: "10",
    status: "Pending",
    reportLink: "https://www.orimi.com/pdf-test.pdf",
    invoiceLink:
        "https://slicedinvoices.com/pdf/wordpress-pdf-invoice-plugin-sample.pdf",
  ),
  ResultModel(
    id: 2,
    dateTime: DateTime.now(),
    paid: "120",
    due: "20",
    status: "Done",
    invoiceLink:
        "https://slicedinvoices.com/pdf/wordpress-pdf-invoice-plugin-sample.pdf",
    reportLink: "https://www.orimi.com/pdf-test.pdf",
  ),
  ResultModel(
    id: 3,
    dateTime: DateTime.now(),
    paid: "130",
    due: "30",
    status: "Pending",
    invoiceLink:
        "https://slicedinvoices.com/pdf/wordpress-pdf-invoice-plugin-sample.pdf",
  ),
  ResultModel(
    id: 4,
    dateTime: DateTime.now(),
    paid: "140",
    due: "40",
    status: "Done",
    reportLink: "https://www.orimi.com/pdf-test.pdf",
    invoiceLink:
        "https://slicedinvoices.com/pdf/wordpress-pdf-invoice-plugin-sample.pdf",
  ),
  ResultModel(
    id: 5,
    dateTime: DateTime.now(),
    paid: "150",
    due: "50",
    status: "Done",
    invoiceLink:
        "https://slicedinvoices.com/pdf/wordpress-pdf-invoice-plugin-sample.pdf",
    reportLink: "https://www.orimi.com/pdf-test.pdf",
  ),
  ResultModel(
    id: 6,
    dateTime: DateTime.now(),
    paid: "160",
    due: "60",
    status: "Pending",
    invoiceLink:
        "https://slicedinvoices.com/pdf/wordpress-pdf-invoice-plugin-sample.pdf",
  ),
  ResultModel(
    id: 7,
    dateTime: DateTime.now(),
    paid: "170",
    due: "70",
    status: "Done",
    reportLink: "https://www.orimi.com/pdf-test.pdf",
    invoiceLink:
        "https://slicedinvoices.com/pdf/wordpress-pdf-invoice-plugin-sample.pdf",
  ),
];
List<Map<String, dynamic>> testModellist = [
  {
    "id": "1",
    "dateTime": DateTime.now(),
    "paid": "110",
    "due": "10",
    "status": "Done",
  },
  {
    "id": "2",
    "dateTime": DateTime.now(),
    "paid": "120",
    "due": "20",
    "status": "Pending",
    "Page": "20",
  },
  {
    "id": "3",
    "dateTime": DateTime.now(),
    "paid": "130",
    "due": "30",
    "status": "Pending",
    "Page": "20",
    "Balance": "40",
  },
  {
    "id": "5",
    "dateTime": DateTime.now(),
    "paid": "150",
    "due": "50",
    "status": "Done",
  },
  {
    "id": "6",
    "dateTime": DateTime.now(),
    "paid": "160",
    "due": "60",
    "status": "Pending",
    "Page": "60",
  },
  {
    "id": "7",
    "dateTime": DateTime.now(),
    "paid": "170",
    "due": "70",
    "status": "Pending",
    "Page": "40",
    "Balance": "50",
  },
];
