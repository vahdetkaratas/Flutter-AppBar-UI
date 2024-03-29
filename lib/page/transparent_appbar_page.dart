import 'package:flutter/material.dart';

class TransparentAppBarPage extends StatelessWidget {
  const TransparentAppBarPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: const Text('Transparent AppBar'),
          centerTitle: true,
          leading: const BackButton(),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            )
          ],
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
          ),
          backgroundColor: Colors.transparent, // Colors.white.withOpacity(0.1),
          elevation: 0,
        ),
        body: Image.network(
          'https://images.unsplash.com/photo-1609102248009-b2411bff68f6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
      );
}
