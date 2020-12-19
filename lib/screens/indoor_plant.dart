import 'package:flutter/material.dart';
import 'package:plant/plant.dart';
import 'package:plant/screens/indoor_detail.dart';

class IndoorPlant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    icon: Icon(
                      Icons.search,
                      size: 30,
                    ),
                    onPressed: () {})
              ],
            ),
            Text(
              'Indoor',
              style: TextStyle(color: Colors.grey, fontSize: 17),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              'Plants',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: Container(
              child: ListView.builder(
                  itemCount: indoorPlants.length,
                  itemBuilder: (_, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => IndoorDetailPage(
                                    plant: indoorPlants[index])));
                      },
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Hero(
                                tag: indoorPlants[index],
                                child: Image.asset(indoorPlants[index].image)),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              indoorPlants[index].title,
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              indoorPlants[index].discription,
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  '\$ ${indoorPlants[index].price}',
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextButton(
                                  child: Text(
                                    '+',
                                    style: TextStyle(fontSize: 22),
                                  ),
                                  onPressed: () {},
                                )
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Divider()
                          ],
                        ),
                      ),
                    );
                  }),
            ))
          ],
        ));
  }
}
