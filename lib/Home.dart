// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

import 'Empresa.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  _abrirEmpresa(){
    Navigator.push(
      context, 
      MaterialPageRoute(
        builder: (context)=> Empresa(),
        ));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('ATM Consultoria'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        width: double.infinity,  
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('images/logo.png'),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: _abrirEmpresa,
                    child: Image.asset('images/menu_empresa.png'),                  
                  ),
                  GestureDetector(
                    child: Image.asset('images/menu_servico.png'),
                    onTap: () {},                  
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    child: Image.asset('images/menu_cliente.png'),
                    onTap: () {},                  
                  ),
                  GestureDetector(
                    child: Image.asset('images/menu_contato.png'),
                    onTap: () {},                  
                  )
                ],
              ),
            ),
          ],
      ),
    ),
    );
  }
}
