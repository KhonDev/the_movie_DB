import 'package:flutter/material.dart';
import 'package:movie_db_project/resources/resources.dart';

class MovieDetelisMainScreenCastWidget extends StatelessWidget {
  const MovieDetelisMainScreenCastWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'sadsadas',
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(
            height: 300.0,
            child: Scrollbar(
              child: ListView.builder(
                itemCount: 20,
                itemExtent: 130.0,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black.withOpacity(0.2),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(01),
                            blurRadius: 8.0,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                        clipBehavior: Clip.hardEdge,
                        child: Column(
                          children: [
                            Image.asset(Images.whoto),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'asddsfdsfsad',
                                    maxLines: 1,
                                  ),
                                  SizedBox(height: 7.0),
                                  Text(
                                    'asddsfdsfdsfsad',
                                    maxLines: 4,
                                  ),
                                  SizedBox(height: 7.0),
                                  Text(
                                    'asddsdsfdsfsad',
                                    maxLines: 1,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: TextButton(
              onPressed: () {},
              child: Text('fasdsadasdas'),
            ),
          ),
        ],
      ),
    );
  }
}
