// ignore: file_names
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:todo_app/data/database.dart';
import 'package:todo_app/response_model/todo_model.dart';

class TodoUiScreen extends StatefulWidget {
  const TodoUiScreen({super.key});

  @override
  State<TodoUiScreen> createState() => _TodoUiScreenState();
}

class _TodoUiScreenState extends State<TodoUiScreen> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  List<ToDoModel> todoCards = [
    ToDoModel(
        title: 'Flutter',
        description: 'A UI toolkit for building natively compiled applications',
        date: '2023-10-01',
        id: 1),
    ToDoModel(
        title: 'Python',
        description: 'A programming language that lets you work quickly',
        date: '2023-10-02',
        id: 2),
    ToDoModel(
        title: 'JavaScript',
        description:
            'A programming language that conforms to the ECMAScript specification',
        date: '2023-10-03',
        id: 3),
  ];

  List cardColorsList = const [
    Color.fromRGBO(250, 232, 232, 1),
    Color.fromRGBO(232, 237, 250, 1),
    Color.fromRGBO(250, 249, 232, 1),
    Color.fromRGBO(250, 232, 250, 1),
  ];
  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    List<Map> cardList = await TodoDatabase().getTodoItems();
    log("CARD LIST: $cardList");
    for (var element in cardList) {
      todoCards.add(
        ToDoModel(
          date: element['date'],
          description: element['description'],
          title: element['title'],
          id: element['id'],
        ),
      );
    }
    setState(() {});
  }

  void clearController() {
    titleController.clear();
    descriptionController.clear();
    dateController.clear();
  }

  void submit(bool doEdit, [ToDoModel? obj]) {
    if (titleController.text.isNotEmpty &&
        descriptionController.text.isNotEmpty &&
        dateController.text.isNotEmpty) {
      if (doEdit) {
        obj!.title = titleController.text;
        obj.description = descriptionController.text;
        obj.date = dateController.text;
        Map<String, dynamic> row = {
          'title': obj.title,
          'description': obj.description,
          'date': obj.date,
          'id': obj.id,
        };
        TodoDatabase().updateTodoItem(row);
      } else {
        //Add

        // todoCards.add(
        //   ToDoModel(
        //     title: titleController.text,
        //     description: descriptionController.text,
        //     date: dateController.text,
        //   ),
        // );
        Map<String, dynamic> row = {
          'title': titleController.text,
          'description': descriptionController.text,
          'date': dateController.text,
        };
        TodoDatabase().insertTodoItem(row);
        clearController();
        Navigator.of(context).pop();
        setState(() {});
      }
      clearController();
      setState(() {});
    }
    Navigator.of(context).pop();
  }

  void showBottomSheet(bool doEdit, [ToDoModel? obj]) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Create TO-DO Task",
                      style: GoogleFonts.quicksand(
                          fontSize: 22, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  "Title",
                  style: GoogleFonts.quicksand(
                    fontSize: 18,
                    color: const Color.fromRGBO(2, 167, 177, 1.0),
                  ),
                ),
                TextField(
                  controller: titleController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(2, 167, 177, 1.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "Description",
                  style: GoogleFonts.quicksand(
                    fontSize: 18,
                    color: const Color.fromRGBO(2, 167, 177, 1.0),
                  ),
                ),
                TextField(
                  controller: descriptionController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(2, 167, 177, 1.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "Date",
                  style: GoogleFonts.quicksand(
                    fontSize: 18,
                    color: const Color.fromRGBO(2, 167, 177, 1.0),
                  ),
                ),
                TextField(
                  controller: dateController,
                  decoration: InputDecoration(
                    suffixIcon: const Icon(
                      Icons.calendar_month_outlined,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(2, 167, 177, 1.0),
                      ),
                    ),
                  ),
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                      context: context,
                      firstDate: DateTime(2025),
                      lastDate: DateTime(2026),
                    );
                    dateController.text =
                        DateFormat.yMMMd().format(pickedDate!);
                  },
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          if (doEdit) {
                            submit(doEdit, obj);
                          } else {
                            submit(doEdit);
                          }
                        },
                        child: doEdit ? Text("Update") : Text("Submit"))
                  ],
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(2, 167, 177, 1.0),
        title: Text(
          'To-do list',
          style: GoogleFonts.quicksand(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Color.fromRGBO(255, 255, 255, 1.0),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: todoCards.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                color: cardColorsList[index % cardColorsList.length],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            "assets/todo_icon.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          children: [
                            Text(todoCards[index].title),
                            Text(todoCards[index].description),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Text(
                              todoCards[index].date,
                              style: GoogleFonts.quicksand(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 10),
                            GestureDetector(
                              child: Icon(
                                Icons.edit,
                                color: Color.fromRGBO(2, 167, 177, 1),
                              ),
                              onTap: () {
                                titleController.text = todoCards[index].title;
                                descriptionController.text =
                                    todoCards[index].description;
                                dateController.text = todoCards[index].date;
                                showBottomSheet(true, todoCards[index]);
                              },
                            ),
                            SizedBox(width: 10),
                            GestureDetector(
                              child: Icon(Icons.delete_outline_rounded),
                              onTap: () {
                                int id = todoCards[index].id!;
                                TodoDatabase().deleteTodoItem(id);
                                todoCards.removeAt(index);
                                setState(() {});
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showBottomSheet(false);
        },
        backgroundColor: Color.fromRGBO(2, 167, 177, 1.0),
        child: Icon(Icons.add),
      ),
    );
  }
}
