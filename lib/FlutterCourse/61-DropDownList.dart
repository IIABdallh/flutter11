import 'package:drop_down_list/drop_down_list.dart';
import 'package:drop_down_list/model/selected_list_item.dart';
import 'package:flutter/material.dart';

void mian() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  TextEditingController country = TextEditingController();
  TextEditingController age = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("MyApp"),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              AppTextField(
                  datalist: [
                    SelectedListItem(name: "syria"),
                    SelectedListItem(name: "egypt"),
                    SelectedListItem(name: "iraq"),
                    SelectedListItem(name: "oman"),
                    SelectedListItem(name: "UAE"),
                    SelectedListItem(name: "UK"),
                    SelectedListItem(name: "japan"),
                    SelectedListItem(name: "JORDON"),
                    SelectedListItem(name: "USA"),
                    SelectedListItem(name: "syria"),
                    SelectedListItem(name: "egypt"),
                    SelectedListItem(name: "iraq"),
                    SelectedListItem(name: "oman"),
                    SelectedListItem(name: "UAE"),
                    SelectedListItem(name: "UK"),
                    SelectedListItem(name: "japan"),
                    SelectedListItem(name: "JORDON"),
                    SelectedListItem(name: "USA"),
                  ],
                  textEditingController: country,
                  title: "select country",
                  hint: "Country",
                  isCitySelected: true),
              AppTextField(
                  datalist: [
                    SelectedListItem(name: "10"),
                    SelectedListItem(name: "11"),
                    SelectedListItem(name: "13"),
                    SelectedListItem(name: "14"),
                    SelectedListItem(name: "15"),
                    SelectedListItem(name: "16"),
                    SelectedListItem(name: "17"),
                    SelectedListItem(name: "18"),
                    SelectedListItem(name: "19"),
                    SelectedListItem(name: "20"),
                    SelectedListItem(name: "21"),
                    SelectedListItem(name: "22"),
                    SelectedListItem(name: "23"),
                    SelectedListItem(name: "24"),
                    SelectedListItem(name: "25"),
                    SelectedListItem(name: "26"),
                    SelectedListItem(name: "27"),
                    SelectedListItem(name: "28"),
                  ],
                  textEditingController: age,
                  title: "select age",
                  hint: "age",
                  isCitySelected: true)
            ],
          ),
        ),
      ),
    );
  }
}

class AppTextField extends StatefulWidget {
  final TextEditingController textEditingController;
  final String title;
  final String hint;
  final bool isCitySelected;
  final List<SelectedListItem>? datalist;

  const AppTextField({
    required this.textEditingController,
    required this.title,
    required this.hint,
    required this.isCitySelected,
    this.datalist,
    Key? key,
  }) : super(key: key);

  @override
  _AppTextFieldState createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  /// This is on text changed method which will display on city text field on changed.
  void onTextFieldTap() {
    DropDownState(
      DropDown(
        isDismissible: true,
        bottomSheetTitle: Text(
          widget.title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        submitButtonChild: const Text(
          'Done', // enableMultipleSelection بيظهر فقط لو ان كنت مفعل اختيار
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        data: widget.datalist ?? [],
        selectedItems: (List<dynamic> selectedList) {
          List<String> list = [];
          for (var item in selectedList) {
            if (item is SelectedListItem) {
              list.add(item.name);
              print(item.name); //علشان اطبع العنصر الي اخترته
              widget.textEditingController.text = item.name;
            }
          }
          showSnackBar(list.toString());
        },
        enableMultipleSelection: false, //اخلي الشخص يختار حاجه واحده بس
      ),
    ).showModal(context);
  }

  void showSnackBar(String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.title),
        const SizedBox(
          height: 5.0,
        ),
        TextFormField(
          controller: widget.textEditingController,
          cursorColor: Colors.black,
          onTap: widget.isCitySelected
              ? () {
                  FocusScope.of(context)
                      .unfocus(); // list بيظهر علي طول text filed  علي focus مش بيعمل
                  onTextFieldTap();
                }
              : null,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.black12,
            contentPadding:
                const EdgeInsets.only(left: 8, bottom: 0, top: 0, right: 15),
            // ignore: unrelated_type_equality_checks
            hintText: widget.textEditingController.text.isEmpty
                ? widget.hint
                : widget.textEditingController.text
            //textfiled اخلي الي انا اخترته يظهر في
            ,
            border: const OutlineInputBorder(
              borderSide: BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 15.0,
        ),
      ],
    );
  }
}
