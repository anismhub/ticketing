import '../model/overview_model.dart';
import '../model/ticket_model.dart';

final List<OverviewModel> overviewModel = [
  OverviewModel(
    title: "Due Today",
    number: "2",
  ),
  OverviewModel(
    title: "Open",
    number: "250",
  ),
  OverviewModel(
    title: "Overdue",
    number: "3",
  ),
  OverviewModel(
    title: "Pending",
    number: "3",
  ),
  OverviewModel(
    title: "Completed",
    number: "3",
  ),
  OverviewModel(
    title: "Cancelled",
    number: "5",
  )
];

final List<TicketModel> ticketModel = [
  TicketModel(
    heading: "Tidak bisa print file",
    subHeading: "Printer Offline",
  ),
  TicketModel(
    heading: "Tidak Terhubung internet",
    subHeading: "Wifi tidak terhubung",
  ),
  TicketModel(
    heading: "Printer Error",
    subHeading: "Kertas nge-jam",
  ),
  TicketModel(
    heading: "Office error",
    subHeading: "Office unlicensed version",
  ),
  TicketModel(
    heading: "Outlook error",
    subHeading: "Outlook tidak bisa dibuka",
  ),
  TicketModel(
    heading: "PC Lemot",
    subHeading: "Terlalu lama untuk membuka aplikasi",
  ),
];
