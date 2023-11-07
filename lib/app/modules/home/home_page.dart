import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:testmobx/app/core/models/todo_model.dart';
import 'package:testmobx/app/modules/home/controller/home_controller.dart';

import '../../core/utils/colors.dart';

class HomePage extends StatefulWidget {
  final HomeController homeController;
  const HomePage({super.key, required this.homeController});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FocusNode myFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      widget.homeController.getAllTodos();
      myFocusNode.requestFocus();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => myFocusNode.requestFocus(),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: DecoratedBox(
            decoration: BoxDecoration(gradient: AppColors.scaffoldBackground),
            child: Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, top: 16),
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Observer(
                        builder: (_) => Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 3,
                          decoration: const BoxDecoration(color: Colors.white),
                          child: ListView.builder(
                              itemCount: widget.homeController.listTodos.length,
                              itemBuilder: (context, index) {
                                TodoModel todo =
                                    widget.homeController.listTodos[index];
                                return Expanded(
                                  child: ListTile(
                                    title: Text(todo.title),
                                    trailing: const Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(Icons.edit),
                                          Icon(Icons.delete),
                                        ]),
                                  ),
                                );
                              }),
                        ),
                      ),
                    ],
                  ),
                  Observer(
                    builder: (_) => Align(
                      alignment: Alignment.bottomCenter,
                      child: TextField(
                        onEditingComplete: () async {
                          await widget.homeController.createTodo();
                        },
                        onChanged: widget.homeController.todo.createTitle,
                        focusNode: myFocusNode,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
