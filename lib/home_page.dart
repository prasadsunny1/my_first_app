import 'package:flutter/material.dart';
import 'package:my_first_app/movie_service.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home page'),
        ),
        body: FutureBuilder<Map<dynamic, dynamic>>(
          future: getMovies(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(snapshot.data.toString());
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        )

        // ListView.builder(
        //   itemBuilder: (context, index) {
        //     return ListTile(
        //       title: Text('Index' + " = " + index.toString()),
        //     );
        //   },
        // ),
        );
  }
}
