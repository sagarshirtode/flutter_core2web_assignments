import 'package:flutter/material.dart';

class Que21 extends StatelessWidget {
  const Que21({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IPL"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 200,
                    child: Center(
                      child: Image.network(
                          "https://img1.hscicdn.com/image/upload/f_auto,t_ds_square_w_80/lsci/db/PICTURES/CMS/313400/313421.logo.png"),
                    ),
                  ),
                  Text(
                    "CSK",
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 200,
                    child: Center(
                      child: Image.network(
                          "https://img1.hscicdn.com/image/upload/f_auto,t_ds_square_w_80/lsci/db/PICTURES/CMS/313400/313480.logo.png"),
                    ),
                  ),
                  Text(
                    "SRH",
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 200,
                    child: Center(
                      child: Image.network(
                          "https://img1.hscicdn.com/image/upload/f_auto,t_ds_square_w_80/lsci/db/PICTURES/CMS/313400/313422.logo.png"),
                    ),
                  ),
                  Text(
                    "DC",
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 200,
                    child: Center(
                      child: Image.network(
                          "https://img1.hscicdn.com/image/upload/f_auto,t_ds_square_w_80/lsci/db/PICTURES/CMS/334700/334707.png"),
                    ),
                  ),
                  Text(
                    "GT",
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 200,
                    child: Center(
                      child: Image.network(
                          "https://img1.hscicdn.com/image/upload/f_auto,t_ds_square_w_80/lsci/db/PICTURES/CMS/333800/333885.png"),
                    ),
                  ),
                  Text(
                    "LSG",
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 200,
                    child: Center(
                      child: Image.network(
                          "https://img1.hscicdn.com/image/upload/f_auto,t_ds_square_w_80/lsci/db/PICTURES/CMS/313400/313423.logo.png"),
                    ),
                  ),
                  Text(
                    "RR",
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 200,
                    child: Center(
                      child: Image.network(
                          "https://img1.hscicdn.com/image/upload/f_auto,t_ds_square_w_80/lsci/db/PICTURES/CMS/378000/378049.png"),
                    ),
                  ),
                  Text(
                    "RCB",
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 200,
                    child: Center(
                      child: Image.network(
                          "https://img1.hscicdn.com/image/upload/f_auto,t_ds_square_w_80/lsci/db/PICTURES/CMS/344000/344062.png"),
                    ),
                  ),
                  Text(
                    "MI",
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 200,
                    child: Center(
                      child: Image.network(
                          "https://img1.hscicdn.com/image/upload/f_auto,t_ds_square_w_80/lsci/db/PICTURES/CMS/317000/317003.png"),
                    ),
                  ),
                  Text(
                    "PK",
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
