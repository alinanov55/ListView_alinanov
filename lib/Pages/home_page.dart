import 'package:flutter/material.dart';
import '../components/list_item.dart';

// массив для первого listview
const List<String> itemslistword = <String>["Первый", "Второй", "Третий", "Четыертый", "Пятый", "Шестой", "Седьмой"];

// массив для второго listview
const List<String> itemslistnum = <String>["I","II","III","IV","V","VI"];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white12,
        appBar: AppBar(
          foregroundColor: const Color.fromARGB(255, 255, 255, 255),
          title: const Center(
              child: Text('ToyShop ')),
          backgroundColor: Colors.purpleAccent,
        ),


        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              height: MediaQuery.of(context).size.height * 0.5,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: itemslistword.length,
                  itemBuilder: (BuildContext context, int index)

                  {
                    return  ListItem(textItem: itemslistword[index],);
                  }),
            ),

            Container(
              padding: const EdgeInsets.all(16.0),
              height: MediaQuery.of(context).size.height * 0.5,
              child:
              ListView.builder(
                itemCount: itemslistnum.length,
                itemBuilder: (BuildContext context, int index,)

                {
                  return ListItem(textItem: itemslistnum[index].toString(),);
                },
              ),
            ),

          ],
        )
    );
  }
}

