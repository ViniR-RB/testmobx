import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:testmobx/app/modules/home/controller/home_controller.dart';

import '../../core/models/todo_model.dart';
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
      body: Container(
        decoration: BoxDecoration(gradient: AppColors.scaffoldBackground),
        child: Stack(
          children: [
            CustomScrollView(
              slivers: [
                SliverList(
                    delegate: SliverChildListDelegate([
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Observer(
                          builder: (_) => Container(
                            margin:
                                const EdgeInsets.only(left: 24.0, right: 24.0),
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height / 3,
                            decoration:
                                const BoxDecoration(color: Colors.white),
                            child: ListView.builder(
                                itemCount:
                                    widget.homeController.listTodos.length,
                                itemBuilder: (context, index) {
                                  TodoModel todo =
                                      widget.homeController.listTodos[index];
                                  return ListTile(
                                    title: Text(todo.title),
                                    trailing: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          IconButton(
                                              icon: const Icon(Icons.edit),
                                              onPressed: () => {}),
                                          IconButton(
                                            icon: const Icon(Icons.delete),
                                            onPressed: () => widget
                                                .homeController
                                                .deleteTodo(index),
                                          ),
                                        ]),
                                  );
                                }),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 24.0, right: 24.0, top: 16),
                          child: Observer(
                            builder: (_) => TextField(
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
                  )
                ]))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
