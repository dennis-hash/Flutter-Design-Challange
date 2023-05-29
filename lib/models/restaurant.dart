import 'food.dart';

class Restaurant{
  String name;
  String waitTime;
  String distance;
  String label;
  String logoUrl;
  String desc;
  num score;
  Map<String,List<Food>> menu;
  Restaurant({
    required this.name,
    required this.waitTime,
    required this.distance,
    required this.label,
    required this.logoUrl,
    required this.desc,
    required this.score,
    required this.menu,
  });
  static Restaurant generateRestaurant(){
    return Restaurant(
      name: 'Bites',
      waitTime: '20-30 min',
      distance: '1.5 km',
      label: 'No.1 in Sales',
      logoUrl: 'assets/images/restaurant1.png',
      desc: 'Pizza is delicious',
      score: 4.5,
      menu: {
        'Recommended': Food.generateRecommendedFoods(),
        'Popular': Food.generatePopularFoods(),
        'Pizza': Food.generatePizza(),
        'Burger': Food.generateBurger(),
        'Drinks': Food.generateDrinks(),

      }
    );
}
}