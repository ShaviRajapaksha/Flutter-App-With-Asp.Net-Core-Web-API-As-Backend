import 'package:flutter/material.dart';
import 'package:frontend_ui/api_handler.dart';
import 'package:frontend_ui/edit_page.dart';

import 'model.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MMainPageState();
}

class _MMainPageState extends State<MainPage> {
  ApiHandler apiHandler = ApiHandler();

  void getData() async {
    data = await apiHandler.getUserData();
    setState(() {});
  }
  @override
  void initState() {
    super.initState();
    getData();
  }

  late List<User> data = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlutterApi'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      bottomNavigationBar: MaterialButton(
        color: Colors.teal,
        textColor: Colors.white,
        padding: EdgeInsets.all(10),
        onPressed: getData,
        child: const Text('Get Data'),
      ),
      body: Column(
        children: [ListView.builder(shrinkWrap: true, itemCount: 10, itemBuilder: (context, int index){
          return ListTile(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => EditPage(user: data[index]),),),
            leading: Text('${data[index].userId}'),
            title: Text(data[index].name),
            subtitle: Text(data[index].address),
          );
        })],
      ),
    );
  }
}
