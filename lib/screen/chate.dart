import 'package:flutter/material.dart';

import '../model/user.dart';
import '../database/database.dart';

class Chate extends StatefulWidget {
  const Chate({super.key});
  @override
  State<Chate> createState() => _ChateState();
}

class _ChateState extends State<Chate> {

  late DataBase handler;
  Future<int> addUser() async {

    User fi1 = User( id: 1, name : "jane", userName: "Jane93");
    User fi2 = User(id: 2, name: "paul", userName: "paul35");
    User fi3 = User(id: 3, name: "jean", userName: "Jean63");
    User fi4 = User(id: 4, name: "michael", userName: "michael943");
    User fi5 = User(id: 5, name: "patrick", userName: "patrick65");

    List<User> user = [fi1,fi2,fi3,fi4,fi5];

    return await handler.insertUser(user);
  }

  @override
  void initState() {
    super.initState();
    handler = DataBase();
    handler.initializedDB().whenComplete(() async {
      await addUser();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('FedBack', style: TextStyle(color: Color(0xFFECEFF1))),
        backgroundColor: const Color(0xFF90A4AE),
      ),
      body: FutureBuilder(
        future: handler.retrieveUser(),
        builder: (BuildContext context, AsyncSnapshot<List<User>> snapshot){
          if(snapshot.hasData){
            return ListView.builder( 
              itemCount: snapshot.data?.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(8.0),
                    title: Text(snapshot.data![index].name),
                    subtitle: Text(snapshot.data![index].userName.toString()),
                  ), 
                );
              }
            );
          }
          else{
            return const Center(child: CircularProgressIndicator());
          }
        },
      )
    );
  }

  // @override
  // Widget build(BuildContext context) {
    
  //   const numItems = 20;
  //   const _biggerFont = TextStyle(fontSize: 18.0);

  //   Widget _buildRow(int idx){
  //     return ListTile(
  //       leading: CircleAvatar(child: Text('$idx'),),
  //       title: Text('Item $idx', style: _biggerFont),
  //       trailing: Icon(Icons.dashboard),
  //     );
  //   }

  //   return Scaffold(
  //     appBar: AppBar(
  //       title: const Text('FedBack', style: TextStyle(color: Color(0xFFECEFF1))),
  //       backgroundColor: const Color(0xFF90A4AE),
  //     ),
  //     body: ListView.builder(
  //       itemCount: numItems * 2,
  //       padding: EdgeInsets.all(16.0),
  //       itemBuilder: (BuildContext context, int i){
  //         if(i.isOdd) return const Divider();
  //         final index = i ~/ 2 + 1;
  //         return _buildRow(index);
  //       },
  //     )
  //   );
  // }
}