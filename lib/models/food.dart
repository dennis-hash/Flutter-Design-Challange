class Food{
  String imgUrl;
  String desc;
  String name;
  String waitTime;
  String score;
  String cal;
  String price;
  //integer good quantity
  var quantity;
  List<Map<String, String>> ingredients;
  String about;
  bool highLight;
  Food(
     this.imgUrl,
     this.desc,
     this.name,
     this.waitTime,
     this.score,
     this.cal,
     this.price,
     this.quantity,
     this.ingredients,
     this.about,
     {this.highLight = false}
  );
  static List<Food> generateRecommendedFoods(){
    return [
      Food(
        'assets/images/burger.png',
        'No.1 in Sales',
        'Burger',
        '20-30 min',
        '4.5',
        '300 cal',
        '20',
        1,
        [
          {'Beef':'assets/images/f9.png',},
          {'Lettuce':'assets/images/f9.png',},
          {'Tomato':'assets/images/f9.png',},
          {'Onion':'assets/images/f9.png',},
          {'Cheese':'assets/images/f9.png',},
          
        ],
        'Burger is a sandwich consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun. The patty may be pan fried, barbecued, or flame broiled. Burgers are often served with lettuce, tomato, onion, pickles, cheese, bacon, mayonnaise, mustard, ketchup, relish, or chiles. A hamburger topped with cheese is called a cheeseburger. Burgers are often served with French fries or potato chips, and a drink such as beer, soda, water, milk, or iced tea.',
      highLight: true),
      Food(
        'assets/images/pizza.png',
        'Low Fat',
        'Salad',
        '10-20 min',
        '4.5',
        '300 cal',
        '20',
        1,
        [
          {'Beef':'assets/images/f9.png',},
          {'Lettuce':'assets/images/f9.png',},
          {'Tomato':'assets/images/f9.png',},
          {'Onion':'assets/images/f9.png',},
          {'Cheese':'assets/images/f9.png',},
          
        ],
        'Burger is a sandwich consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun. The patty may be pan fried, barbecued, or flame broiled. Burgers are often served with lettuce, tomato, onion, pickles, cheese, bacon, mayonnaise, mustard, ketchup, relish, or chiles. A hamburger topped with cheese is called a cheeseburger. Burgers are often served with French fries or potato chips, and a drink such as beer, soda, water, milk, or iced tea.',
      highLight: true),
      Food(
        'assets/images/fries.png',
        'No.1 in Sales',
        'Burger',
        '20-30 min',
        '4.5',
        '300 cal',
        '20',
        1,
        [
          {'Beef':'assets/images/f9.png',},
          {'Lettuce':'assets/images/f9.png',},
          {'Tomato':'assets/images/f9.png',},
          {'Onion':'assets/images/f9.png',},
          {'Cheese':'assets/images/f9.png',},
          
        ],
        'Burger is a sandwich consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun. The patty may be pan fried, barbecued, or flame broiled. Burgers are often served with lettuce, tomato, onion, pickles, cheese, bacon, mayonnaise, mustard, ketchup, relish, or chiles. A hamburger topped with cheese is called a cheeseburger. Burgers are often served with French fries or potato chips, and a drink such as beer, soda, water, milk, or iced tea.',
       highLight: true),
       Food(
        'assets/images/fries.png',
        'No.1 in Sales',
        'Burger',
        '20-30 min',
        '4.5',
        '300 cal',
        '20',
        1,
        [
          {'Beef':'assets/images/f9.png',},
          {'Lettuce':'assets/images/f9.png',},
          {'Tomato':'assets/images/f9.png',},
          {'Onion':'assets/images/f9.png',},
          {'Cheese':'assets/images/f9.png',},
          
        ],
        'Burger is a sandwich consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun. The patty may be pan fried, barbecued, or flame broiled. Burgers are often served with lettuce, tomato, onion, pickles, cheese, bacon, mayonnaise, mustard, ketchup, relish, or chiles. A hamburger topped with cheese is called a cheeseburger. Burgers are often served with French fries or potato chips, and a drink such as beer, soda, water, milk, or iced tea.',
       highLight: true),
      Food(
        'assets/images/fries.png',
        'No.1 in Sales',
        'Burger',
        '20-30 min',
        '4.5',
        '300 cal',
        '20',
        1,
        [
          {'Beef':'assets/images/f9.png',},
          {'Lettuce':'assets/images/f9.png',},
          {'Tomato':'assets/images/f9.png',},
          {'Onion':'assets/images/f9.png',},
          {'Cheese':'assets/images/f9.png',},
          
        ],
        'Burger is a sandwich consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun. The patty may be pan fried, barbecued, or flame broiled. Burgers are often served with lettuce, tomato, onion, pickles, cheese, bacon, mayonnaise, mustard, ketchup, relish, or chiles. A hamburger topped with cheese is called a cheeseburger. Burgers are often served with French fries or potato chips, and a drink such as beer, soda, water, milk, or iced tea.',
       highLight: true),
       Food(
        'assets/images/fries.png',
        'No.1 in Sales',
        'Burger',
        '20-30 min',
        '4.5',
        '300 cal',
        '20',
        1,
        [
          {'Beef':'assets/images/f9.png',},
          {'Lettuce':'assets/images/f9.png',},
          {'Tomato':'assets/images/f9.png',},
          {'Onion':'assets/images/f9.png',},
          {'Cheese':'assets/images/f9.png',},
          
        ],
        'Burger is a sandwich consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun. The patty may be pan fried, barbecued, or flame broiled. Burgers are often served with lettuce, tomato, onion, pickles, cheese, bacon, mayonnaise, mustard, ketchup, relish, or chiles. A hamburger topped with cheese is called a cheeseburger. Burgers are often served with French fries or potato chips, and a drink such as beer, soda, water, milk, or iced tea.',
       highLight: true),
       Food(
        'assets/images/fries.png',
        'No.1 in Sales',
        'Burger',
        '20-30 min',
        '4.5',
        '300 cal',
        '20',
        1,
        [
          {'Beef':'assets/images/f9.png',},
          {'Lettuce':'assets/images/f9.png',},
          {'Tomato':'assets/images/f9.png',},
          {'Onion':'assets/images/f9.png',},
          {'Cheese':'assets/images/f9.png',},
          
        ],
        'Burger is a sandwich consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun. The patty may be pan fried, barbecued, or flame broiled. Burgers are often served with lettuce, tomato, onion, pickles, cheese, bacon, mayonnaise, mustard, ketchup, relish, or chiles. A hamburger topped with cheese is called a cheeseburger. Burgers are often served with French fries or potato chips, and a drink such as beer, soda, water, milk, or iced tea.',
       highLight: true),    
    ];   
}
static List<Food> generatePopularFoods(){
  return [
      Food(
        'assets/images/burger.png',
        'No.1 in Sales',
        'Burger',
        '20-30 min',
        '4.5',
        '300 cal',
        '20',
        1,
        [
          {'Beef':'assets/images/f9.png',},
          {'Lettuce':'assets/images/f9.png',},
          {'Tomato':'assets/images/f9.png',},
          {'Onion':'assets/images/f9.png',},
          {'Cheese':'assets/images/f9.png',},
          
        ],
        'Burger is a sandwich consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun. The patty may be pan fried, barbecued, or flame broiled. Burgers are often served with lettuce, tomato, onion, pickles, cheese, bacon, mayonnaise, mustard, ketchup, relish, or chiles. A hamburger topped with cheese is called a cheeseburger. Burgers are often served with French fries or potato chips, and a drink such as beer, soda, water, milk, or iced tea.',
      highLight: true),
      Food(
        'assets/images/pizza.png',
        'Low Fat',
        'Salad',
        '10-20 min',
        '4.5',
        '300 cal',
        '20',
        1,
        [
          {'Beef':'assets/images/f9.png',},
          {'Lettuce':'assets/images/f9.png',},
          {'Tomato':'assets/images/f9.png',},
          {'Onion':'assets/images/f9.png',},
          {'Cheese':'assets/images/f9.png',},
          
        ],
        'Burger is a sandwich consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun. The patty may be pan fried, barbecued, or flame broiled. Burgers are often served with lettuce, tomato, onion, pickles, cheese, bacon, mayonnaise, mustard, ketchup, relish, or chiles. A hamburger topped with cheese is called a cheeseburger. Burgers are often served with French fries or potato chips, and a drink such as beer, soda, water, milk, or iced tea.',
      highLight: true),
      Food(
        'assets/images/fries.png',
        'No.1 in Sales',
        'Burger',
        '20-30 min',
        '4.5',
        '300 cal',
        '20',
        1,
        [
          {'Beef':'assets/images/f9.png',},
          {'Lettuce':'assets/images/f9.png',},
          {'Tomato':'assets/images/f9.png',},
          {'Onion':'assets/images/f9.png',},
          {'Cheese':'assets/images/f9.png',},
          
        ],
        'Burger is a sandwich consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun. The patty may be pan fried, barbecued, or flame broiled. Burgers are often served with lettuce, tomato, onion, pickles, cheese, bacon, mayonnaise, mustard, ketchup, relish, or chiles. A hamburger topped with cheese is called a cheeseburger. Burgers are often served with French fries or potato chips, and a drink such as beer, soda, water, milk, or iced tea.',
       highLight: true),
       Food(
        'assets/images/fries.png',
        'No.1 in Sales',
        'Burger',
        '20-30 min',
        '4.5',
        '300 cal',
        '20',
        1,
        [
          {'Beef':'assets/images/f9.png',},
          {'Lettuce':'assets/images/f9.png',},
          {'Tomato':'assets/images/f9.png',},
          {'Onion':'assets/images/f9.png',},
          {'Cheese':'assets/images/f9.png',},
          
        ],
        'Burger is a sandwich consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun. The patty may be pan fried, barbecued, or flame broiled. Burgers are often served with lettuce, tomato, onion, pickles, cheese, bacon, mayonnaise, mustard, ketchup, relish, or chiles. A hamburger topped with cheese is called a cheeseburger. Burgers are often served with French fries or potato chips, and a drink such as beer, soda, water, milk, or iced tea.',
       highLight: true),
       Food(
        'assets/images/fries.png',
        'No.1 in Sales',
        'Burger',
        '20-30 min',
        '4.5',
        '300 cal',
        '20',
        1,
        [
          {'Beef':'assets/images/f9.png',},
          {'Lettuce':'assets/images/f9.png',},
          {'Tomato':'assets/images/f9.png',},
          {'Onion':'assets/images/f9.png',},
          {'Cheese':'assets/images/f9.png',},
          
        ],
        'Burger is a sandwich consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun. The patty may be pan fried, barbecued, or flame broiled. Burgers are often served with lettuce, tomato, onion, pickles, cheese, bacon, mayonnaise, mustard, ketchup, relish, or chiles. A hamburger topped with cheese is called a cheeseburger. Burgers are often served with French fries or potato chips, and a drink such as beer, soda, water, milk, or iced tea.',
       highLight: true),
    
    ];  
 
}
static List<Food> generatePizza(){
    return [
      Food(
        'assets/images/pizza.png',
        'No.1 in Sales',
        'Hawaiian',
        '20-30 min',
        '4.5',
        '300 cal',
        '1000',
        1,
        [
          {'Beef':'assets/images/f9.png',},
          {'Lettuce':'assets/images/f9.png',},
          {'Tomato':'assets/images/f9.png',},
          {'Onion':'assets/images/f9.png',},
          {'Cheese':'assets/images/f9.png',},
          
        ],
        'Burger is a sandwich consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun. The patty may be pan fried, barbecued, or flame broiled. Burgers are often served with lettuce, tomato, onion, pickles, cheese, bacon, mayonnaise, mustard, ketchup, relish, or chiles. A hamburger topped with cheese is called a cheeseburger. Burgers are often served with French fries or potato chips, and a drink such as beer, soda, water, milk, or iced tea.',
      highLight: true),
      Food(
        'assets/images/bbq.png',
        'Low Fat',
        'Barbecue',
        '10-20 min',
        '4.5',
        '300 cal',
        '1000',
        1,
        [
          {'Beef':'assets/images/f9.png',},
          {'Lettuce':'assets/images/f9.png',},
          {'Tomato':'assets/images/f9.png',},
          {'Onion':'assets/images/f9.png',},
          {'Cheese':'assets/images/f9.png',},
          
        ],
        'Burger is a sandwich consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun. The patty may be pan fried, barbecued, or flame broiled. Burgers are often served with lettuce, tomato, onion, pickles, cheese, bacon, mayonnaise, mustard, ketchup, relish, or chiles. A hamburger topped with cheese is called a cheeseburger. Burgers are often served with French fries or potato chips, and a drink such as beer, soda, water, milk, or iced tea.',
      highLight: true),
      Food(
        'assets/images/cheese.png',
        'No.1 in Sales',
        'Cheese',
        '20-30 min',
        '4.5',
        '300 cal',
        '1000',
        1,
        [
          {'Beef':'assets/images/f9.png',},
          {'Lettuce':'assets/images/f9.png',},
          {'Tomato':'assets/images/f9.png',},
          {'Onion':'assets/images/f9.png',},
          {'Cheese':'assets/images/f9.png',},
          
        ],
        'Burger is a sandwich consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun. The patty may be pan fried, barbecued, or flame broiled. Burgers are often served with lettuce, tomato, onion, pickles, cheese, bacon, mayonnaise, mustard, ketchup, relish, or chiles. A hamburger topped with cheese is called a cheeseburger. Burgers are often served with French fries or potato chips, and a drink such as beer, soda, water, milk, or iced tea.',
       highLight: true),
    
    ];   
}
static List<Food> generateBurger(){
    return [
      Food(
        'assets/images/beefburger.png',
        '',
        'Hawaiian',
        '20-30 min',
        '4.5',
        '300 cal',
        '300',
        1,
        [
          {'Beef':'assets/images/f9.png',},
          {'Lettuce':'assets/images/f9.png',},
          {'Tomato':'assets/images/f9.png',},
          {'Onion':'assets/images/f9.png',},
          {'Cheese':'assets/images/f9.png',},
          
        ],
        'Burger is a sandwich consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun. The patty may be pan fried, barbecued, or flame broiled. Burgers are often served with lettuce, tomato, onion, pickles, cheese, bacon, mayonnaise, mustard, ketchup, relish, or chiles. A hamburger topped with cheese is called a cheeseburger. Burgers are often served with French fries or potato chips, and a drink such as beer, soda, water, milk, or iced tea.',
      highLight: true),
      Food(
        'assets/images/beefbacon.png',
        'Low Fat',
        'Beef Bacon',
        '10-20 min',
        '4.5',
        '300 cal',
        '300',
        1,
        [
          {'Beef':'assets/images/f9.png',},
          {'Lettuce':'assets/images/f9.png',},
          {'Tomato':'assets/images/f9.png',},
          {'Onion':'assets/images/f9.png',},
          {'Cheese':'assets/images/f9.png',},
          
        ],
        'Burger is a sandwich consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun. The patty may be pan fried, barbecued, or flame broiled. Burgers are often served with lettuce, tomato, onion, pickles, cheese, bacon, mayonnaise, mustard, ketchup, relish, or chiles. A hamburger topped with cheese is called a cheeseburger. Burgers are often served with French fries or potato chips, and a drink such as beer, soda, water, milk, or iced tea.',
      highLight: true),
      Food(
        'assets/images/cheeseburger.jpg',
        'No.1 in Sales',
        'Cheese Burger',
        '20-30 min',
        '4.5',
        '300 cal',
        '300',
        1,
        [
          {'Beef':'assets/images/f9.png',},
          {'Lettuce':'assets/images/f9.png',},
          {'Tomato':'assets/images/f9.png',},
          {'Onion':'assets/images/f9.png',},
          {'Cheese':'assets/images/f9.png',},
          
        ],
        'Burger is a sandwich consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun. The patty may be pan fried, barbecued, or flame broiled. Burgers are often served with lettuce, tomato, onion, pickles, cheese, bacon, mayonnaise, mustard, ketchup, relish, or chiles. A hamburger topped with cheese is called a cheeseburger. Burgers are often served with French fries or potato chips, and a drink such as beer, soda, water, milk, or iced tea.',
       highLight: true),
    
    ];   
}

static List<Food> generateDrinks(){
    return [
      Food(
        'assets/images/1ltrcoke.jpeg',
        '1ltr',
        '1ltr Coke',
        '20-30 min',
        '4.5',
        '200 cal',
        '300',
        1,
        [
          {'Beef':'assets/images/f9.png',},
          {'Lettuce':'assets/images/f9.png',},
          {'Tomato':'assets/images/f9.png',},
          {'Onion':'assets/images/f9.png',},
          {'Cheese':'assets/images/f9.png',},
          
        ],
        'Burger is a sandwich consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun. The patty may be pan fried, barbecued, or flame broiled. Burgers are often served with lettuce, tomato, onion, pickles, cheese, bacon, mayonnaise, mustard, ketchup, relish, or chiles. A hamburger topped with cheese is called a cheeseburger. Burgers are often served with French fries or potato chips, and a drink such as beer, soda, water, milk, or iced tea.',
      highLight: true),
      Food(
        'assets/images/500mlcoke.jpeg',
        '500ml',
        '500ml Coke',
        '10-20 min',
        '4.5',
        '300 cal',
        '120',
        1,
        [
          {'Beef':'assets/images/f9.png',},
          {'Lettuce':'assets/images/f9.png',},
          {'Tomato':'assets/images/f9.png',},
          {'Onion':'assets/images/f9.png',},
          {'Cheese':'assets/images/f9.png',},
          
        ],
        'Burger is a sandwich consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun. The patty may be pan fried, barbecued, or flame broiled. Burgers are often served with lettuce, tomato, onion, pickles, cheese, bacon, mayonnaise, mustard, ketchup, relish, or chiles. A hamburger topped with cheese is called a cheeseburger. Burgers are often served with French fries or potato chips, and a drink such as beer, soda, water, milk, or iced tea.',
      highLight: true),
      Food(
        'assets/images/pepsi2.jpeg',
        'No.1 in Sales',
        'Pepsi',
        '20-30 min',
        '4.5',
        '300 cal',
        '120',
        1,
        [
          {'Beef':'assets/images/f9.png',},
          {'Lettuce':'assets/images/f9.png',},
          {'Tomato':'assets/images/f9.png',},
          {'Onion':'assets/images/f9.png',},
          {'Cheese':'assets/images/f9.png',},
          
        ],
        'Burger is a sandwich consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun. The patty may be pan fried, barbecued, or flame broiled. Burgers are often served with lettuce, tomato, onion, pickles, cheese, bacon, mayonnaise, mustard, ketchup, relish, or chiles. A hamburger topped with cheese is called a cheeseburger. Burgers are often served with French fries or potato chips, and a drink such as beer, soda, water, milk, or iced tea.',
       highLight: true),
    
    ];   
}

}