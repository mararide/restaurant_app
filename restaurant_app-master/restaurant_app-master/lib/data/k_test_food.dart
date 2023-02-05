import 'package:food_craft/models/food_model.dart';

import '../constants/app_assets.dart';

const kTestFood = [
  FoodModel(
    id: 1,
    name: "Pizza",
    price: 21,
    rating: '3.8',
    seller: 'Warung Indah Sejahtera',
    location: '2.2',
    time: '12',
    desc:
        'a dish made typically of flattened bread dough spread with a savory mixture usually including tomatoes and cheese and often other toppings and baked',
    imageUrl: AppAssets.pizza,
    imageSquareUrl: AppAssets.pizzaSquare,
  ),
  FoodModel(
    id: 2,
    name: "Burger Crispy",
    price: 10,
    rating: '4.8',
    seller: 'Depot Ekanadi',
    location: '1',
    time: '5',
    desc:
        'A burger is a patty of ground beef grilled and placed between two halves of a bun. Slices of raw onion, lettuce, bacon, mayonnaise, and other ingredients add flavor. Burgers are considered an American food but are popular around the world.',
    imageUrl: AppAssets.burger,
    imageSquareUrl: AppAssets.burgerSquare,
  ),
  FoodModel(
    id: 3,
    name: "Bread With Black Berry",
    price: 12,
    rating: '4.4',
    seller: 'Depot Ekanadi',
    location: '1',
    time: '5',
    desc:
        'Sweet bread, also referred to as pan dulce, buns or coffee bread, is a bread or cake that is typically sweet in flavor. Some sweet breads, such as Portuguese Pao Douce, may be prepared with potato flour, which imparts a sweet flavor and light texture to them.',
    imageUrl: AppAssets.bread,
    imageSquareUrl: AppAssets.breadSquare,
  ),
  FoodModel(
    id: 4,
    name: "Super Hot Curry",
    price: 12,
    rating: '4.4',
    seller: 'Warjok',
    location: '3.4',
    time: '3',
    desc:
        'is the world is hottest curry because it contains the worlds spiciest chile, the bhut jolokia (ghost pepper), which is three times hotter than a habanero. This dish is exceptionally spicy and not for the faint of heart! Recipe by Jonathan.',
    imageUrl: AppAssets.curry,
    imageSquareUrl: AppAssets.currySquare,
  ),
  FoodModel(
    id: 5,
    name: "Rainbow Sushi Roll",
    price: 12,
    rating: '4.8',
    seller: 'Warjok',
    location: '4.9',
    time: '3',
    desc:
        'Rainbow roll is a type of uramaki sushi roll filled with cucumber, avocado and crab stick. It is prepared with multiple types of fish, most commonly tuna, salmon, white fish, yellowtail, snapper, and eel.',
    imageUrl: AppAssets.sushi,
    imageSquareUrl: AppAssets.sushiSquare,
  ),
  FoodModel(
    id: 6,
    name: "Zombie Sushi Roll",
    price: 15,
    rating: '4.8',
    seller: 'Warung Enak',
    location: '5.9',
    time: '30',
    desc:
        'Rainbow roll is a type of uramaki sushi roll filled with cucumber, avocado and crab stick. It is prepared with multiple types of fish, most commonly tuna, salmon, white fish, yellowtail, snapper, and eel. Rainbow roll is quite similar to the California roll, with the addition of tuna, salmon and avocado.',
    imageUrl: AppAssets.sushiRoll,
    imageSquareUrl: AppAssets.sushiRollSquare,
  ),
  FoodModel(
    id: 7,
    name: "Nasi Goreng",
    price: 15,
    rating: '5',
    seller: 'Depot Ekanadi',
    location: '1.2',
    time: '8',
    desc:
        'The basic ingredients of nasi goreng are rice and sliced or ground bumbu (spices) mixture of shallot, garlic, pepper, salt, tomato ketchup, sambal or chili sauce, and usually sweet soy sauce.',
    imageUrl: AppAssets.nasiGoreng,
    imageSquareUrl: AppAssets.nasiGorengSquare,
  ),
  FoodModel(
    id: 8,
    name: "Indomie Goreng Pedas Level:SS",
    price: 30,
    rating: '4.9',
    seller: 'Depot Ekanadi',
    location: '1.2',
    time: '8',
    desc:
        'In moderation, including instant noodles in your diet likely wont come with any negative health effects. However, they are low in nutrients, so dont use them as a staple in your diet. Whats more, frequent consumption is linked to poor diet quality and an increased risk of metabolic syndrome',
    imageUrl: AppAssets.indomie,
    imageSquareUrl: AppAssets.indomieSquare,
  ),
];
