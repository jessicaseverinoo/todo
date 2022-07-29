import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  ToDoPage({Key? key}) : super(key: key);

  final TextEditingController todoTextController = TextEditingController();

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ToDo List'),
      ),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Add a new TODO',
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    OutlinedButton.icon(
                      onPressed: _onPressedAddNewTodo,
                      icon: const Icon(Icons.add_rounded),
                      label: const Text(''),
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(vertical: 18),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Expanded(
                  child: ListView(
                    children: [
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text('26/07/2022'),
                                    Text('Study flutter'),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 8),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.edit),
                              ),
                              const SizedBox(width: 8),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.delete),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    const Expanded(
                      child: Text('You have 0 tasks in TODO'),
                    ),
                    ElevatedButton(onPressed: () {}, child: Text('Clear All'))
                  ],
                )
              ],
            )),
      ),
    );
  }

  _onPressedAddNewTodo() {}
}
