import 'package:flutter/material.dart';
import 'package:ticketing/widgets/dropdown_widget.dart';
import '../constant.dart';

class CreateTicket extends StatefulWidget {
  const CreateTicket({super.key});

  @override
  _CreateTicketState createState() => _CreateTicketState();
}

class _CreateTicketState extends State<CreateTicket> {
  List<String> categoryItems = ["Problem", "Setting/Install"],
      locationItems = [
        "Admin Building",
        "Workshop Building",
        "Turbine Building"
      ],
      helpdeskItems = ["Anis", "Jony", "Eko", "Fandi", "Dion"];
  String? selectedCategory = 'Problem',
      selectedLocation = 'Admin Building',
      selectedHelpdesk = 'Anis',
      selectedItem;

  var controller = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text('Create Ticket'),
        backgroundColor: cBlue,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 12),
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    hintText: "Masukkan Nama Lengkap",
                    labelText: "Nama Lengkap",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(height: 12),
              CustomDropdownButtonFormField(
                labelText: "Task type",
                value: selectedCategory,
                onChanged: (value) {
                  setState(() {
                    selectedCategory = value;
                  });
                },
                items: categoryItems.map((e) {
                  return DropdownMenuItem(
                    value: e,
                    child: Text(e),
                  );
                }).toList(),
              ),
              SizedBox(height: 12),
              TextFormField(
                controller: controller,
                decoration: InputDecoration(
                    labelText: "Sub Category",
                    hintText: "Sub category dari task",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
              ),
              SizedBox(height: 12),
              CustomDropdownButtonFormField(
                labelText: "Location",
                value: selectedLocation,
                onChanged: (value) => setState(() {
                  selectedLocation = value;
                }),
                items: locationItems
                    .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                    .toList(),
              ),
              SizedBox(height: 12),
              CustomDropdownButtonFormField(
                labelText: "Helpdesk",
                value: selectedHelpdesk,
                onChanged: (value) => setState(() {
                  selectedHelpdesk = value;
                }),
                items: helpdeskItems
                    .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                    .toList(),
              ),
              SizedBox(height: 12),
              TextFormField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                    labelText: "Description",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
              ),
              SizedBox(height: 12),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 200,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black45, width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Icon(Icons.camera_alt),
                  ),
                ),
              ),
              ElevatedButton(onPressed: () {}, child: Text("Submit"))
            ],
          ),
        ),
      ),
    );
  }
}
