import 'package:flt_rest_api/services/remote_service_matematicon.dart';
import 'package:flutter/material.dart';

import '../models/matematicon.dart';

class MatematiconPage extends StatefulWidget {
  const MatematiconPage({super.key});

  @override
  State<MatematiconPage> createState() => _MatematiconPageState();
}

class _MatematiconPageState extends State<MatematiconPage> {
  List<Matematicon>? posts;
  bool isLoaded = false;
  @override
  void initState() {
    super.initState();
    // fetch data from API
    getData();
  }

  getData() async {
    posts = await RemoteServiceMatematicon().getPosts();
    if (posts != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('API post'),
      ),
      body: Visibility(
        visible: isLoaded,
        // ignore: sort_child_properties_last
        child: ListView.builder(
          itemCount: posts?.length,
          itemBuilder: (context, index) {
            return Expanded(
                child: Column(
              children: [
                Text(posts![index].codclasa),
                Text(posts![index].codmaterie),
                Text(posts![index].codserie),
                Text(posts![index].denumireserie),
              ],
            ));
          },
        ),
        replacement: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
