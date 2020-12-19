class Plant {
  final String title;
  final String discription;
  final String price;
  final String height;
  final String image;
  final String temperature;
  final String port;
  Plant(
      {this.title,
      this.discription,
      this.price,
      this.height,
      this.image,
      this.temperature,
      this.port});
}

List<Plant> plants = [
  Plant(
      title: 'Turf Pot Plant',
      discription:
          'Plant in a glass bowl. It can be mounted on a wall or ceiling (holders included.)',
      height: '40 cm to 50cm',
      temperature: '18c to 25c',
      image: 'lib/images/plant2.png',
      port: 'Self Watering Pot',
      price: '59.00'),
  Plant(
      title: 'Scandinavain',
      discription:
          'Plant in a glass bowl. It can be mounted on a wall or ceiling (holders included.)',
      height: '40 cm to 50cm',
      temperature: '18c to 25c',
      image: 'lib/images/plant1.png',
      port: 'Self Growing pot',
      price: '85.00')
];
List<Plant> indoorPlants = [
  Plant(
      title: 'African Violet',
      discription:
          'Plant in a glass bowl. It can be mounted on a wall or ceiling (holders included.)',
      height: '40 cm to 50cm',
      temperature: '18c to 25c',
      image: 'lib/images/plant3.png',
      port: 'Self Growing pot',
      price: '70.00'),
  Plant(
      title: 'Peace Lily',
      discription:
          'Plant in a glass bowl. It can be mounted on a wall or ceiling (holders included.)',
      height: '40 cm to 50cm',
      temperature: '18c to 25c',
      image: 'lib/images/plant4.png',
      port: 'Self Growing pot',
      price: '50.00'),
];
List<Plant> shapePlants = [
  Plant(
      title: 'Sweetheart Hoya',
      discription:
          'Plant in a glass bowl. It can be mounted on a wall or ceiling (holders included.)',
      height: '40 cm to 50cm',
      temperature: '18c to 25c',
      image: 'lib/images/plant5.png',
      port: 'Self Growing pot',
      price: '68.00'),
  Plant(
      title: 'Cyclamen',
      discription:
          'Plant in a glass bowl. It can be mounted on a wall or ceiling (holders included.)',
      height: '40 cm to 50cm',
      temperature: '18c to 25c',
      image: 'lib/images/plant6.png',
      port: 'Self Growing pot',
      price: '95.00')
];
