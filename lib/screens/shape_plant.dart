import 'package:flutter/material.dart';
import 'package:plant/plant.dart';
import 'package:plant/screens/shape_detail.dart';

class ShapePlant extends StatelessWidget {
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
            'Shape',
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
                itemCount: shapePlants.length,
                itemBuilder: (_, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) =>
                                  ShapeDetailPage(plant: shapePlants[index])));
                    },
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Hero(
                              tag: shapePlants[index].title,
                              child: Image.asset(shapePlants[index].image)),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            shapePlants[index].title,
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            shapePlants[index].discription,
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                '\$${shapePlants[index].price}',
                                style: TextStyle(
                                    fontSize: 35, fontWeight: FontWeight.bold),
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
      ),
    );
  }
}
