import 'package:flutter/material.dart';

class DynamicGridview extends StatefulWidget {
  const DynamicGridview({super.key});

  @override
  State<DynamicGridview> createState() => _DynamicGridviewState();
}

class _DynamicGridviewState extends State<DynamicGridview> {
  List<String> items = [
    'https://images.firstpost.com/uploads/2024/02/MS-Dhoni-CSK-IPL-2023-PTI-1200-2024-02-9c8c7d515e57c707fd33cef140b5d687.jpg?im=FitAndFill=(1200,675)',
    'https://images.mykhel.com/ph-big/2024/07/rohit-sharma-beams-with-joy-as-he-holds-t20-world-cup-after-india-thrilling-win-against-sa-17198090737.jpg',
    'https://th.bing.com/th/id/R.091930a9bd514bfc8ebb721df6f302b7?rik=Vrq%2bAP6sb2psbQ&riu=http%3a%2f%2feuropeanbusinessmagazine.com%2fwp-content%2fuploads%2f2017%2f05%2felon-musk-10.jpeg&ehk=l9y8lJhNCMUgBS%2feey5pYjYbfHXldRa2jb%2f0babOz7A%3d&risl=&pid=ImgRaw&r=0',
    'https://tse4.mm.bing.net/th/id/OIP.U828eE6tS7Vej6Dt6jWdBgHaEK?rs=1&pid=ImgDetMain&o=7&rm=3',
    'https://wallpapers.com/images/hd/vishal-on-a-white-shirt-v19671rrlzbygrr9.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dynamic GridView',
          style: TextStyle(fontSize: 20),
        ),
      ),
      // drawer: MenuDrawer(),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemCount: items.length,
        padding: EdgeInsets.all(10),
        itemBuilder: (context, index) {
          return Container(
            color: Colors.amber,
            child: Image.network(items[index], fit: BoxFit.cover),
          );
        },
      ),
    );
  }
}
