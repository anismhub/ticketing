import 'package:ticketing/model/category_model.dart';
import 'package:ticketing/model/user_model.dart';
import 'package:ticketing/model/overview_model.dart';
import 'package:ticketing/model/ticket_model.dart';

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

final List<CategoryModel> categoryModel = [
  CategoryModel(category: "Setting/Install"),
  CategoryModel(category: "Problem")
];

final List<UserModel> userModel = [
  UserModel(
    imagePath:
        'https://images.unsplash.com/photo-1664575602554-2087b04935a5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
    name: 'Muhamad Anis',
    nomor: '085150021000',
    email: 'contohemail@gmail.com',
    jobTitle: 'IT Support',
  ),
];
